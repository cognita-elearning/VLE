<?php
/*
All code of the SCORM Module is Copyright 2009 by Servit Open Source Solutions (www.servit.ch)

Except re-used code from the following sources:
Moodle SCORM Module (http://cvs.moodle.org/moodle/mod/scorm/), GPL
SCORM Module for Drupal (http://drupal.org/project/scorm), GPL

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.

You should have received a copy of the GNU General Public License
along with this program as the file LICENSE.txt; if not, please see
http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
*/
//require_once('../../config.php');
/*
 * @file loadSCO.inc file
 */
global $user;
//Get get params
if (!isset($_GET['id']) || !isset($_GET['scoid']) || !isset($_GET['mode'])) {
  print("A required parameter is missing");
  return;
}

if (isset($_GET['id']))
    $id=$_GET['id'];
    

if (isset($_GET['id']))
    $mode=$_GET['mode'];
    
$scoid=$_GET['scoid'];
if (!empty($id)) {
$scorm = db_fetch_object(db_query("SELECT * FROM {scorm} WHERE id= %d", $id));
}

/*
    $id = optional_param('id', '', PARAM_INT);       // Course Module ID, or
    $a = optional_param('a', '', PARAM_INT);         // scorm ID
    $scoid = required_param('scoid', PARAM_INT);     // sco ID
*/
    $delayseconds = 2;  // Delay time before sco launch, used to give time to browser to define API
/*
 * 
 * 
    if (!empty($id)) {
        if (! $cm = get_coursemodule_from_id('scorm', $id)) {
            error('Course Module ID was incorrect');
        }
        if (! $course = get_record('course', 'id', $cm->course)) {
            error('Course is misconfigured');
        }
        if (! $scorm = get_record('scorm', 'id', $cm->instance)) {
            error('Course module is incorrect');
        }
    } else if (!empty($a)) {
        if (! $scorm = get_record('scorm', 'id', $a)) {
            error('Course module is incorrect');
        }
        if (! $course = get_record('course', 'id', $scorm->course)) {
            error('Course is misconfigured');
        }
        if (! $cm = get_coursemodule_from_instance('scorm', $scorm->id, $course->id)) {
            error('Course Module ID was incorrect');
        }
    } else {
        error('A required parameter is missing');
    }
*/
    //require_login($course->id, FALSE, $cm);
    if (!empty($scoid)) {
    //
    // Direct SCO request
    //
        if ($sco = scorm_get_sco($scoid)) {
            if ($sco->launch == '') {
                // Search for the next launchable sco
                $sco=db_fetch_object(db_query("SELECT * FROM {scorm_scoes} WHERE scorm=%d AND launch<>'". sql_empty() ."' AND id>%d order by id ASC", $id, $sco->id));
            }
        }
    }
    //
    // If no sco was found get the first of SCORM package
    //
    if (!isset($sco)) {
      $sco=db_fetch_object(db_query("SELECT * FROM {scorm_scoes} WHERE scorm=%d AND launch<>'". sql_empty() ."' order by id ASC", $id));
    }

    if ($sco->scormtype == 'asset') {
       $attempt = db_result(db_query("SELECT max(attempt) FROM {scorm_scoes_track} WHERE userid = %d and scormid= %d", $user->uid, $scorm->id));
       if (empty($attempt))
          $attempt=1;
       $element = ($scorm->version == 'scorm_13' || $scorm->version == 'SCORM_1.3') ?'cmi.completion_status':'cmi.core.lesson_status';
       $value = 'completed';
       $result = scorm_insert_track($USER->id, $scorm->id, $sco->id, $attempt, $element, $value);
    }

    //
    // Forge SCO URL
    //
    $connector = '';
    $version = substr($scorm->version, 0, 4);
    if ((isset($sco->parameters) && (!empty($sco->parameters))) || ($version == 'AICC')) {
        if (stripos($sco->launch, '?') !== FALSE) {
            $connector = '&';
        } 
        else {
            $connector = '?';
        }
        if ((isset($sco->parameters) && (!empty($sco->parameters))) && ($sco->parameters[0] == '?')) {
            $sco->parameters = substr($sco->parameters, 1);
        }
    }

    if ($version == 'AICC') {
        if (isset($sco->parameters) && (!empty($sco->parameters))) {
            $sco->parameters = '&'. $sco->parameters;
        }
        $launcher = $sco->launch . $connector .'aicc_sid='. sesskey() .'&aicc_url='. $CFG->wwwroot .'/mod/scorm/aicc.php'. $sco->parameters;
    } 
    else {
        if (isset($sco->parameters) && (!empty($sco->parameters))) {
            $launcher = $sco->launch . $connector . $sco->parameters;
        } 
        else {
            $launcher = $sco->launch;
        }
    }

    if (scorm_external_link($sco->launch)) {
        // Remote learning activity
        $result = $launcher;
    } 
    elseif ($scorm->reference[0] == '#') {
        // Repository
        $result = $CFG->repositorywebroot . substr($scorm->reference, 1) .'/'. $sco->launch;
    } 
    else {
        if ((basename($scorm->reference) == 'imsmanifest.xml') && scorm_external_link($scorm->reference)) {
            // Remote manifest
            $result = dirname($scorm->reference) .'/'. $launcher;
        } 
        else {
            // Moodle internal package/manifest or remote (auto-imported) package
            if (basename($scorm->reference) == 'imsmanifest.xml') {
                $basedir = dirname($scorm->reference);
            } 
            else {
                $basedir = $CFG->moddata .'/scorm/'. $scorm->id;
            }
            //note: do not convert this to use get_file_url()!
            //      SCORM does not work without slasharguments anyway and there might be some extra ?xx=yy params
            //      see MDL-16060
            $result = $CFG->wwwroot .'/file.php/'. $scorm->course .'/'. $basedir .'/'. $launcher;
        }
    }

    $scormpixdir = $CFG->modpixpath .'/scorm/pix';

    // which API are we looking for
    $LMS_api = ($scorm->version == 'scorm_12' || $scorm->version == 'SCORM_1.2' || empty($scorm->version)) ? 'API' : 'API_1484_11';
?>
<html>
    <head>
        <title>LoadSCO</title>
        <script type="text/javascript">
        //<![CDATA[
        var apiHandle = NULL;
        var findAPITries = 0;

        function getAPIHandle() {
           if (apiHandle == NULL) {
              apiHandle = getAPI();
           }
           return apiHandle;
        }

        function findAPI(win) {
           while ((win.<?php echo $LMS_api; ?> == NULL) && (win.parent != NULL) && (win.parent != win)) {
              findAPITries++;
              // Note: 7 is an arbitrary number, but should be more than sufficient
              if (findAPITries > 7) {
                 return NULL;
              }
              win = win.parent;
           }
           return win.<?php echo $LMS_api; ?>;
        }

        // hun for the API - needs to be loaded before we can launch the package
        function getAPI() {
           var theAPI = findAPI(window);
           if ((theAPI == NULL) && (window.opener != NULL) && (typeof(window.opener) != "undefined")) {
              theAPI = findAPI(window.opener);
           }
           if (theAPI == NULL) {
              return NULL;
           }
           return theAPI;
        }

        function doredirect() {
            if (getAPI() != NULL) {
                location = "<?php echo $result ?>";
            }
            else {
                document.body.innerHTML = "<p><?php echo t('Activity is loading.');?> <span id='countdown'><?php echo $delayseconds ?></span> <?php echo ' '.t('seconds');?>. &nbsp; <img src='<?php echo $scormpixdir;?>/wait.gif'><p>";
                var e = document.getElementById("countdown");
                var cSeconds = parseInt(e.innerHTML);
                var timer = setInterval(function() {
                                                if( cSeconds && getAPI() == NULL ) {
                                                    e.innerHTML = --cSeconds;
                                                } else {
                                                    clearInterval(timer);
                                                    document.body.innerHTML = "<p><?php echo t('Please wait. Activity is loading.');?></p>";
                                                    location = "<?php echo $result ?>";
                                                }
                                            }, 1000);
            }
        }
        //]]>
        </script>
        <noscript>
            <meta http-equiv="refresh" content="0;url=<?php echo $result ?>" />
        </noscript>
    </head>
    <body onload="doredirect();">
        <p><?php echo t('Please wait. Activity is loading.');?></p>
        <?php if (debugging('', DEBUG_DEVELOPER)) {
                  add_to_log($course->id, 'scorm', 'launch', 'view.php?id='. $cm->id, $result, $cm->id);
              }
        ?>
    </body>
</html>