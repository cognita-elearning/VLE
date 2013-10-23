<?PHP 
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

 // 
/// This page prints a particular instance of scorm package


//TODO:Move to SCORM.module

/**
 * 
 * @param stdClass $scorm
 *
 * @param string $currentorg
 *
 * @param $scoid
 *
 * @param mixed $width
 *  Width of SCORM
 *
 * @param mixed $height
 *  Height of SCORM
 *
 * @param int $display_method
 *  How to display the SCORM. 0 = embedded, 1 = popup, 2 = lightbox2
 *
 * @return string
 *    Returns HTML that is used to display the SCORM or prepare to launch the SCORM.
 */
function player($scorm, $currentorg, $scoid, $width='100%', $height='600', $display_method='0') {
  global $user;
  global $base_path;
  global $base_url;
   
  //TODO: Test
  $cm=$scorm;
  $strscorms = 'SCORMs/AICCs';
  $strscorm  = 'SCORM/AICC';
  $strexit = t('Exit activity');

  $navlinks = array();
  
  $scorm->version = eregi_replace('[^a-zA-Z0-9_-]', '',$scorm->version);
  $scorm->version = strtolower($scorm->version);   // Just to be safe
  
  $lib_path=drupal_get_path('module', 'SCORM').'/datamodels/'.$scorm->version.'lib.php';
  if (!file_exists($lib_path)) {
      $scorm->version = 'scorm_13';
      $lib_path=drupal_get_path('module', 'SCORM').'/datamodels/'.$scorm->version.'lib.php';
  }
  require_once($lib_path);
  
  $attempt = db_result(db_query("SELECT max(attempt) FROM {scorm_scoes_track} WHERE userid = %d and scormid= %d",$user->uid,$scorm->id));
  if(empty($attempt))
     $attempt=1;
  
  //TODO: Check is it newattempt?
  if (($attempt < $scorm->maxattempt) || ($scorm->maxattempt == 0)) {
    $attempt++;
    $mode = 'normal';
  }
  $attemptstr = '&attempt=' . $attempt;

  if($scorm->version=='scorm_12') {
    $result = scorm_get_toc12($scorm,'structurelist',$currentorg,$scoid,$mode,$attempt,true);
  }
  else {
    $result = scorm_get_toc($scorm,'structurelist',$currentorg,$scoid,$mode,$attempt,true);
  }
  $sco = $result->sco;

  if (($mode == 'browse') && ($scorm->hidebrowse == 1)) {
     $mode = 'normal';
  }
  
  if ($mode != 'browse') {
    if ($trackdata = scorm_get_tracks($sco->id,$attempt,$user->uid)) {
      if (($trackdata->status == 'completed') || ($trackdata->status == 'passed') || ($trackdata->status == 'failed')) {
        $mode = 'review';
      } 
      else {
        $mode = 'normal';
      }
    } 
    else {
      $mode = 'normal';
    }
  }

  $scoidstr = '&scoid='.$sco->id;
  $scoidpop = '&scoid='.$sco->id;
  $modestr = '&mode='.$mode;
  if ($mode == 'browse') {
      $modepop = '&mode='.$mode;
  } 
  else {
    $modepop = '';
  }
  $orgstr = '&currentorg='.$currentorg;

  $SESSION->scorm_scoid = $sco->id;
  $SESSION->scorm_status = 'Not Initialized';
  $SESSION->scorm_mode = $mode;
  $SESSION->scorm_attempt = $attempt;

  // Print the page header
  $bodyscript = '';
  if ($scorm->popup == 1) {
      $bodyscript = 'onunload="main.close();"';
  }

  //TODO: Complete
  //$navlinks[] = array('name' => format_string($scorm->name,true), 'link' => "view.php?id=$cm->id", 'type' => 'activityinstance');
  //$navigation = build_navigation($navlinks);
  //$exitlink = '<a href="'.$base_path.$_GET['q'].'?id='.$scorm->course.'?scoid='.$sco->id.'?mode=exit" title="'.$strexit.'">'.$strexit.'</a> ';
   
  //$exitlink = '<div id="exitlink"><a href="'.$base_path.'result?id='.$scorm->id.'?scoid='.$sco->id.'?mode=exit" title="'.$strexit.'">'.$strexit.'</a></div>';
  //$exitlink ='<div id="exitlink" class="exitevent"><input onclick="popup_api('.$scorm->id.');" type="submit" value="'.$strexit.'" /></div>';
  //$output.=$exitlink;
  /*print_header($pagetitle, $course->fullname,
               $navigation,
               '', '', true, $exitlink.update_module_button($cm->id, $course->id, $strscorm), '', false, $bodyscript);*/
  global $base_url;
 // drupal_add_js('api?id='.$cm->id.$scoidstr.$modestr.$attemptstr, 'core', 'header', FALSE, FALSE, FALSE);
	$output .= '<script type="text/javascript" src="'.$base_url.'/api?id='.$cm->id.$scoidstr.$modestr.$attemptstr.'"> </script>';
  //drupal_add_js(scorm_getAPIFilename($cm->id,$sco->id,$mode,$attempt), 'core', 'header', FALSE, FALSE, FALSE);
  drupal_add_js(drupal_get_path('module', 'SCORM') . '/js/request.js', 'module');
  drupal_add_js(drupal_get_path('module', 'SCORM') . '/js/rd.js', 'module');
  
  drupal_add_js(array('mymodule' => array(
              'scormid' => $scorm->id,
              'url'=> $base_url.$base_path,
              'cssLink' => $base_path . drupal_get_path('module', 'SCORM') . '/css/SCORM.css'          
              )), 'setting');
  drupal_add_js(drupal_get_path('module', 'SCORM') .'/js/feedback_popup.js', 'module');
  //Add JS to inject CSS into SCORM iframe
  drupal_add_js(drupal_get_path('module', 'SCORM') .'/js/inject_css.js', 'module');
  
  if (($sco->previd != 0) && ((!isset($sco->previous)) || ($sco->previous == 0))) {
    $scostr = '&scoid='.$sco->previd;
    $output.= '<script type="text/javascript">'."\n//<![CDATA[\n".'var prev="'.$base_path.$_GET['q'].'?id='.$cm->id.$orgstr.$modepop.$scostr."\";\n//]]>\n</script>\n";
  } 
  else {
    $output.= '<script type="text/javascript">'."\n//<![CDATA[\n".'var prev="'.$base_path.$_GET['q'].'?id='.$cm->id."\";\n//]]>\n</script>\n";
  }
  
  if (($sco->nextid != 0) && ((!isset($sco->next)) || ($sco->next == 0))) {
    $scostr = '&scoid='.$sco->nextid;
    $output.= '<script type="text/javascript">'."\n//<![CDATA[\n".'var next="'.$base_path.$_GET['q'].'?id='.$cm->id.$orgstr.$modepop.$scostr."\";\n//]]>\n</script>\n";
  } 
  else {
    $output.= '<script type="text/javascript">'."\n//<![CDATA[\n".'var next="'.$base_path.$_GET['q'].'?id='.$cm->id."\";\n//]]>\n</script>\n";
  }

  $output.='<div id="scormpage">';
  $output.='<div id="scormbox" class="'.$class.'"';
  if(($scorm->hidetoc == 2) || ($scorm->hidetoc == 1)) {
    $output.='style="width:100%"';
  }
  
  //bugfix: popup cck divs r not closed
  if ($display_method == 0) {
    $output.=">"; 
  }
  else {
    $output.="></div></div></div>";
  }
          

  // This very big test check if is necessary the "scormtop" div:
  // 1. We are not in normal mode so review or browse text will displayed
  // 2. Teacher want to display navigation links
  // 3. The buttons has not been displayed
  // 4. This is not the first learning object of the package
  // 5. Moodle must manage the previous link
  // 6. This is not the last learning object of the package
  // 7. Moodle must manage the next link
  // 8. Teacher want to display toc in a small dropdown menu 
  if ( ($mode != 'normal') || (($scorm->hidenav == 0) && ($scorm->hidetoc != 0) && (( ($sco->previd != 0) && ((!isset($sco->previous)) || ($sco->previous == 0)) ) || ( ($sco->nextid != 0) && ((!isset($sco->next)) || ($sco->next == 0)) ) ) ) || ($scorm->hidetoc == 2) ) {

    $output.='<div id="scormtop">';
    //TODO: Do we need these modes?
    $output.= $mode == 'browse' ? '<div id="scormmode" class="scorm-left">browsemode</div>\n"' : '';
    $output.= $mode == 'review' ? '<div id="scormmode" class="scorm-left">reviewmode</div>\n"' : ''; 

    if (($scorm->hidenav == 0) || ($scorm->hidetoc == 2) || ($scorm->hidetoc == 1)) {
    
      $output.='<div id="scormnav" class="scorm-right">';
      
      $orgstr = '&amp;currentorg='.$currentorg;
      if (($scorm->hidenav == 0) && ($sco->previd != 0) && (!isset($sco->previous) || $sco->previous == 0) && (($scorm->hidetoc == 2) || ($scorm->hidetoc == 1)) ) {
    
        // Print the prev LO button
        $scostr = '&amp;scoid='.$sco->previd;
        $url=$base_path.$_GET['q'].'?id='.$cm->id.$orgstr.$modestr.$scostr;
        
        $output.='  <form name="scormnavprev" method="post" action="player.php?id='.$cm->id.'" target="_top" style= "display:inline">';
        $output.='<input name="prev" type="button" value="prev" onClick="document.location.href=\''. $url.'\'"/></form>';
      }
      
      if ($scorm->hidetoc == 2) {
        $output.= $result->tocmenu;
      }
      
      if (($scorm->hidenav == 0) && ($sco->nextid != 0) && (!isset($sco->next) || $sco->next == 0) && (($scorm->hidetoc == 2) || ($scorm->hidetoc == 1))) {
        // Print the next LO button
        $scostr = '&amp;scoid='.$sco->nextid;
        $url=$base_path.$_GET['q'].'?id='.$cm->id.$orgstr.$modestr.$scostr;
        
        $output.='<form name="scormnavnext" method="post" action="player.php?id='.$cm->id.'" target="_top" style= "display:inline">';
        $output.='<input name="next" type="button" value="next" onClick="document.location.href=\''. $url.'\'"/></form>'; 
      }
    
      $output.='</div>';
    
    }
    
    $output.='</div>';// <!-- Scormtop -->

  } // The end of the very big test

  $output.='<div id="scormobject" class="scorm-right"><noscript><div id="noscript">Noscriptnoscorm</div></noscript>';

  if ($result->prerequisites) {
  
  	switch($display_method) {
      
      // Embedded display
  		case 0: 
  		  $fullurl=$base_path."loadsco?id=".$cm->id.$scoidstr.$modestr;
  		  $output.= "<iframe  onload=\"scormframecss(event)\" name=\"scormiframe\" id=\"scoframe1\" width=100% height='$height' class=\"scoframe\" name=\"scoframe1\" src=\"{$fullurl}\"></iframe>\n";
  		  break;
  		
  		// Popup display
  		case 1: 
  		  //TODO: Improve and test popup
        // Clean the name for the window as IE is fussy
        $name = ereg_replace("[^A-Za-z0-9]", "", $scorm->name);
        if (!$name) {
          $name = 'DefaultPlayerWindow';
        }
        $name = 'scorm_'.$name;
        
        /*
        $output.='
          <script type="text/javascript">
            //<![CDATA[
           ' //scorm_resize('.$width.', '. $height.');
            .'function openpopup(url,name,options,width,height) {
              fullurl = "'.$base_path.'" + url;
              windowobj = window.open(fullurl,name,options);
              if ((width==100) && (height==100)) {
                // Fullscreen
                windowobj.moveTo(0,0);
              } 
              if (width<=100) {
                width = Math.round(screen.availWidth * width / 100);
              }
              if (height<=100) {
                height = Math.round(screen.availHeight * height / 100);
              }
              windowobj.resizeTo(width,height);
              windowobj.focus();
              return windowobj;
            }
            url ="'.$base_path.'loadSCO?id='.$cm->id.'";
            width = '.$width.'
            height = '.$height.'
            './/var main = openpopup(url, "'.$name.'", "'.$scorm->options.'", width, height);.
            '
            //]]>
          </script>
          <noscript>
            <iframe id="main" class="scoframe" src="'.$base_path.'loadSCO?id='.$cm->id.$scoidstr.$modestr.'">
            </iframe>
          </noscript>';
       */
        //Added incase javascript popups are blocked
        //$link = '<a href="'.$base_path.'loadSCO?id='.$cm->id.$scoidstr.$modestr.'" target="new">Click here to view SCORM</a>';$sco->id
        //$link = l(t('Click here to open Popup'), $base_url.'/loadSCO?id='.$cm->id.$scoidstr.$modestr, array('html'=>TRUE));
        $link = l(t('Click here to open Popup'), $base_url.'/loadSCO?id='.$cm->id.'&scoid='.$sco->id.'&mode='.$mode, array('html'=>TRUE, 'attributes' => array('target' => '_blank')));
        //print_simple_box(get_string('popupblocked','scorm',$link),'center');
        $output.=$link;
        return $output;
  		  break;
  		
  		// Lightbox2 display (http://drupal.org/project/lightbox2)
  		case 2: 
  		  //TODO: Improve and test popup
        // Clean the name for the window as IE is fussy
        $name = ereg_replace("[^A-Za-z0-9]", "", $scorm->name);
        if (!$name) {
          $name = 'DefaultPlayerWindow';
        }
        $name = 'scorm_'.$name;
        
        // Append iframe view if client does not support javascript
        $output.='<noscript><iframe id="main" class="scoframe" src="'.$base_path.'loadSCO?id='.$cm->id.$scoidstr.$modestr.'"></iframe></noscript>';
       
        //Added incase javascript popups are blocked          
        $link = l(t('Click here to open Lightbox'), $base_url.'/loadSCO?id='.$cm->id.$scoidstr.$modestr, array('html'=>TRUE, 'attributes'=>array('rel'=>'lightframe[|width:'.$width.'px; height:'.$height.'px;]')));
        $output.=$link;
        return $output;
  		  break;
  	}
//        if ($popup == 0) {
//            /*
//            //Insert start time for viewing sco.
//            $scorm_grades = db_fetch_object(db_query("SELECT * FROM {scorm_grades} WHERE scoid=%d AND userid=%d",$sco->id,$user->uid));
//            
//            if(!$scorm_grades){
//              db_query("INSERT INTO {scorm_grades} (scormid,scoid,userid,starttime) VALUES(%d,%d,%d,%d)",$scorm->id,$sco->id,$user->uid,time());
//            }
//            else
//            {
//              db_query("UPDATE {scorm_grades} SET starttime=%d WHERE scoid=%d and userid=%d",time(),$sco->id,$user->uid);          
//            }*/
//            $fullurl=$base_path."loadsco?id=".$cm->id.$scoidstr.$modestr;
//           
//            $output.= "<iframe  onload=\"scormframecss(event)\" name=\"scormiframe\" id=\"scoframe1\" width=100% height='$height' class=\"scoframe\" name=\"scoframe1\" src=\"{$fullurl}\"></iframe>\n";
//            
//        } else {
//          
//          //TODO: Improve and test popup
//            // Clean the name for the window as IE is fussy
//            $name = ereg_replace("[^A-Za-z0-9]", "", $scorm->name);
//            if (!$name) {
//                $name = 'DefaultPlayerWindow';
//            }
//            $name = 'scorm_'.$name;
//          
//              $output.='<script type="text/javascript">
//                    //<![CDATA[
//                        scorm_resize('.$width.'", "'. $height.');
//                        function openpopup(url,name,options,width,height) {
//                            fullurl = "'.$base_path.'" + url;
//                            windowobj = window.open(fullurl,name,options);
//                            if ((width==100) && (height==100)) {
//                                // Fullscreen
//                                windowobj.moveTo(0,0);
//                            } 
//                            if (width<=100) {
//                                width = Math.round(screen.availWidth * width / 100);
//                            }
//                            if (height<=100) {
//                                height = Math.round(screen.availHeight * height / 100);
//                            }
//                            windowobj.resizeTo(width,height);
//                            windowobj.focus();
//                            return windowobj;
//                        }
//                        url ="'.$base_path.'"loadSCO?id='.$cm->id.'";
//                        width = '.$width.'
//                        height = '.$height.'
//                        var main = openpopup(url, "'.$name.'", "'.$scorm->options.', width, height);
//                    //]]>
//                    </script>
//                    <noscript>
//                    <iframe id="main" class="scoframe" src="'.$base_path.'"loadSCO?id='.$cm->id.$scoidstr.$modestr.'">
//                    </iframe>
//                    </noscript>';
//         
//             
//            //Added incase javascript popups are blocked
//            $link = '<a href="'.$base_path.'loadSCO?id='.$cm->id.$scoidstr.$modestr.'" target="new">Click here to view SCORM</a>';
//            //print_simple_box(get_string('popupblocked','scorm',$link),'center');
//            $output.=$link;
//            return $output;         
//        }
  } 
  /*else {
      print_simple_box(get_string('noprerequisites','scorm'),'center');
  }*/

  $output.='</div></div>';
  
  /*
   * 	EXITLINK FIX
  if(variable_get('scorm_default_footer', SCORM_DEFAULT_FOOTER)) { 
    $output.=$exitlink;      
  }
  */
  //    if ($scorm->hidetoc == 0) {
  /*
   * removed moodle leftovers
   *
  if(variable_get('scorm_default_footer', SCORM_DEFAULT_FOOTER)) { 
      $output.='<div id="tocbox">';
      if ($scorm->hidenav ==0){

       
          $output.='<div id="tochead">';
          $output.='<form name="tochead" method="post" action="player.php?id='.$cm->id. '" target="_top">';

          $orgstr = '&amp;currentorg='.$currentorg;
          if (($scorm->hidenav == 0) && ($sco->previd != 0) && (!isset($sco->previous) || $sco->previous == 0)) {
              // Print the prev LO button
              $scostr = '&amp;scoid='.$sco->previd;
              $url=$base_path.$_GET['q'].'?id='.$cm->id.$orgstr.$modestr.$scostr;

              $output.='<input name="prev" type="button" value="prev" onClick="document.location.href=\''.$url. '\'"/>';
          }
          if (($scorm->hidenav == 0) && ($sco->nextid != 0) && (!isset($sco->next) || $sco->next == 0)) {
              // Print the next LO button
              $scostr = '&amp;scoid='.$sco->nextid;
              $url=$base_path.$_GET['q'].'?id='.$cm->id.$orgstr.$modestr.$scostr;
              $output.='<input name="next" type="button" value="next" onClick="document.location.href=\'' .$url. '\'"/>';
          }
              $output.='</form></div>';// tochead 
      }

           $output.='<div id="toctree" class="generalbox">';
           $output.= $result->toc;
           $output.='</div></div>'; //toctree and tocbox

      $class = ' class="toc"';
  } else {
      $class = ' class="no-toc"';
  }
         */ 
  $output.='</div>'; 
          
          
  return $output;
 //print_footer('none'); 
}//End of function player


function scorm_view_display ($scorm) {
    global $user;

    //if ($scorm->updatefreq == UPDATE_EVERYTIME){
      //  require_once($CFG->dirroot.'/mod/scorm/lib.php');

        $scorm->instance = $scorm->id;
        //TODO: Scorm update
        //scorm_update_instance($scorm);
    

    //$organization = optional_param('organization', '', PARAM_INT);

    //print_simple_box_start('center',$boxwidth);
    //$output='<div class="structurehead">Contents</div>';

    $organization = $scorm->launch;

      $result = db_query("SELECT * FROM {scorm_scoes} WHERE scorm= %d AND organization='' AND launch=''",$scorm->id);
      $orgs=mysql_num_rows($result);
        if ($orgs > 1) {
            $output.="<div class='scorm-center'>Organizations:";
                while(db_fetch_object($result)){
                //TODO: Multiple organizations
                }
                 $output.="</div>";
        }

    $orgidentifier = '';
    if ($sco = scorm_get_sco($organization, SCO_ONLY)) {
        if (($sco->organization == '') && ($sco->launch == '')) {
            $orgidentifier = $sco->identifier;
        } else {
            $orgidentifier = $sco->organization;
        }
    }

/*
 $orgidentifier = '';
    if ($org = get_record('scorm_scoes','id',$organization)) {
        if (($org->organization == '') && ($org->launch == '')) {
            $orgidentifier = $org->identifier;
        } else {
            $orgidentifier = $org->organization;
        }
    }*/

    $scorm->version = eregi_replace('[^a-zA-Z0-9_-]', '',$scorm->version);
    $scorm->version = strtolower($scorm->version);
    $lib_path=drupal_get_path('module', 'SCORM').'/datamodels/'.$scorm->version.'lib.php';
    
    if (!file_exists($lib_path)) {
        $scorm->version = 'scorm_13';
        $lib_path=drupal_get_path('module', 'SCORM').'/datamodels/'.$scorm->version.'lib.php';
    }
    
    //TODO: Use Drupal functions
    require_once($lib_path);

    
     if($scorm->version=='scorm_12')
        $result = scorm_get_toc12($scorm,'structlist',$orgidentifier);
    else
        $result = scorm_get_toc($scorm,'structlist',$orgidentifier);
        
    //$result = scorm_get_toc($scorm,'structlist',$orgidentifier);
    $incomplete = $result->incomplete;
    $output.=$result->toc;
    //$output.= $result->toc;
   // print_simple_box_end();

/*
           $output.=' <div class="scorm-center">';

                  if (($incomplete === false) && (($result->attemptleft > 0)||($scorm->maxattempt == 0))) {

                   $output.='<br /><div/>';

                  }*/
      return $output;
}

function autoplay($scormid){
  $firstsco = db_fetch_object(db_query("SELECT id,organization FROM {scorm_scoes} WHERE scorm= %d AND organization!=''",$scormid));
  if($firstsco){
    return $firstsco;
  }
  return $false;
      
}
?>