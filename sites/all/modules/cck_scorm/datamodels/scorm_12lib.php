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
/**
* This is really a little language parser for AICC_SCRIPT
* evaluates the expression and returns a boolean answer
* see 2.3.2.5.1. Sequencing/Navigation Today  - from the SCORM 1.2 spec (CAM).
*
* @param string $prerequisites the aicc_script prerequisites expression
* @param array  $usertracks the tracked user data of each SCO visited
* @return boolean
*/
function scorm_eval_prerequisites($prerequisites, $usertracks) {

    // this is really a little language parser - AICC_SCRIPT is the reference
    // see 2.3.2.5.1. Sequencing/Navigation Today  - from the SCORM 1.2 spec
    $element = '';
    $stack = array();
    $statuses = array(
                'passed' => 'passed',
                'completed' => 'completed',
                'failed' => 'failed',
                'incomplete' => 'incomplete',
                'browsed' => 'browsed',
                'not attempted' => 'notattempted',
                'p' => 'passed',
                'c' => 'completed',
                'f' => 'failed',
                'i' => 'incomplete',
                'b' => 'browsed',
                'n' => 'notattempted'
                );
    $i=0;

    // expand the amp entities
    $prerequisites = preg_replace('/&amp;/', '&', $prerequisites);
    // find all my parsable tokens
    $prerequisites = preg_replace('/(&|\||\(|\)|\~)/', '\t$1\t', $prerequisites);
    // expand operators
    $prerequisites = preg_replace('/&/', '&&', $prerequisites);
    $prerequisites = preg_replace('/\|/', '||', $prerequisites);
    // now - grab all the tokens
    $elements = explode('\t', trim($prerequisites));

    // process each token to build an expression to be evaluated
    $stack = array();
    foreach ($elements as $element) {
        $element = trim($element);
        if (empty($element)) {
            continue;
        }
        if (!preg_match('/^(&&|\|\||\(|\))$/', $element)) {
            // create each individual expression
            // search for ~ = <> X*{}

            // sets like 3*{S34, S36, S37, S39}
            if (preg_match('/^(\d+)\*\{(.+)\}$/', $element, $matches)) {
                $repeat = $matches[1];
                $set = explode(',', $matches[2]);
                $count = 0;
                foreach ($set as $setelement) {
                  if (isset($usertracks[$setelement]) &&
                      ($usertracks[$setelement]->status == 'completed' || $usertracks[$element]->status == 'passed')) {
                      $count++;
                  }
                }
                if ($count >= $repeat) {
                    $element = 'true';
                } else {
                    $element = 'false';
                }

            // ~ Not
            } else if ($element == '~') {
                $element = '!';

            // = | <>
            } else if (preg_match('/^(.+)(\=|\<\>)(.+)$/', $element, $matches)) {
                $element = trim($matches[1]);
                if (isset($usertracks[$element])) {
                    $value = trim(preg_replace('/(\'|\")/', '', $matches[3]));
                    if (isset($statuses[$value])) {
                        $value = $statuses[$value];
                    }
                    if ($matches[2] == '<>') {
                        $oper = '!=';
                    } else {
                      $oper = '==';
                    }
                    $element = '(\''.$usertracks[$element]->status.'\' '.$oper.' \''.$value.'\')';
                } else {
                  $element = 'false';
                }

            // everything else must be an element defined like S45 ...
            } else {
                if (isset($usertracks[$element]) &&
                    ($usertracks[$element]->status == 'completed' || $usertracks[$element]->status == 'passed')) {
                    $element = 'true';
                } else {
                    $element = 'false';
                }
            }

        }
        $stack []= ' '.$element.' ';
    }
    return eval('return '.implode($stack).';');
}

function scorm_get_toc12($scorm,$liststyle,$currentorg='',$scoid='',$mode='normal',$attempt='',$play=false) {
global $user;
global $base_path;

    $strexpand = 'Expand/Collide';
    $modestr = '';
    if ($mode == 'browse') {
        $modestr = '&amp;mode='.$mode;
    }
    //Get path to image icons
   $scormimgdir = $base_path.drupal_get_path('module', 'SCORM').'/images';

    $result = new stdClass();
    $result->toc = "<ul id='s0' class='$liststyle'>\n";
    $tocmenus = array();
    $result->prerequisites = true;
    $incomplete = false;

    //
    // Get the current organization infos
    //
    if (!empty($currentorg)) {     
        if (($organizationtitle = db_result(db_query("SELECT title FROM {scorm_scoes} WHERE scorm = %d and organization= '%s'",$scorm->id,$currentorg)))) {
            $result->toc .= "\t<li>$organizationtitle</li>\n";
            $tocmenus[] = $organizationtitle;
        }
    }
    //
    // If not specified retrieve the last attempt number
    //
    if (empty($attempt)) {
        $attempt = db_result(db_query("SELECT max(attempt) FROM {scorm_scoes_track} WHERE userid = %d and scormid= %d",$user->uid,$scorm->id));
        if(empty($attempt))
           $attempt=1;
    }
    $result->attemptleft = $scorm->maxattempt - $attempt;
    if ($scoes = scorm_get_scoes($scorm->id, $currentorg)){
        //
        // Retrieve user tracking data for each learning object
        //
        $usertracks = array();
        foreach ($scoes as $sco) {
            if (!empty($sco->launch)) {
                //if ($usertrack = scorm_get_tracks($sco->id,$attempt,$user->uid)) {
              if($usertrack = sco_is_completed($sco->id,$attempt,$user->uid)){
                    if ($usertrack->status == '') {
                        $usertrack->status = 'notattempted';
                    }
                    $usertracks[$sco->identifier] = $usertrack;
                }
            }
        }

        $level=0;
        $sublist=1;
        $previd = 0;
        $nextid = 0;
        $findnext = false;
        $parents[$level]='/';

        foreach ($scoes as $pos => $sco) {
            $isvisible = false;
            $sco->title = stripslashes($sco->title);
            if (!isset($sco->isvisible) || (isset($sco->isvisible) && ($sco->isvisible == 'true'))) {
                $isvisible = true;
            }
            if ($parents[$level] != $sco->parent) {
                if ($newlevel = array_search($sco->parent,$parents)) {
                    for ($i=0; $i<($level-$newlevel); $i++) {
                        $result->toc .= "\t\t</ul></li>\n";
                    }
                    $level = $newlevel;
                } else {
                    $i = $level;
                    $closelist = '';
                    while (($i > 0) && ($parents[$level] != $sco->parent)) {
                        $closelist .= "\t\t</ul></li>\n";
                        $i--;
                    }
                    if (($i == 0) && ($sco->parent != $currentorg)) {
                        $style = '';
                        if (isset($_COOKIE['hide:SCORMitem'.$sco->id])) {
                            $style = ' style="display: none;"';
                        }
                        $result->toc .= "\t\t<li><ul id='s$sublist' class='$liststyle'$style>\n";
                        $level++;
                    } else {
                        $result->toc .= $closelist;
                        $level = $i;
                    }
                    $parents[$level] = $sco->parent;
                }
            }
            if ($isvisible) {
                $result->toc .= "\t\t<li>";
            }
            if (isset($scoes[$pos+1])) {
                $nextsco = $scoes[$pos+1];
            } else {
                $nextsco = false;
            }
            $nextisvisible = false;
            if (($nextsco !== false) && (!isset($nextsco->isvisible) || (isset($nextsco->isvisible) && ($nextsco->isvisible == 'true')))) {
                $nextisvisible = true;
            }
            if ($nextisvisible && ($nextsco !== false) && ($sco->parent != $nextsco->parent) && (($level==0) || (($level>0) && ($nextsco->parent == $sco->identifier)))) {
                $sublist++;
                $icon = 'minus';
                if (isset($_COOKIE['hide:SCORMitem'.$nextsco->id])) {
                    $icon = 'plus';
                }
               $result->toc .= '<a href="javascript:expandCollide(\'img'.$sublist.'\',\'s'.$sublist.'\','.$nextsco->id.');"><img id="img'.$sublist.'" src="'.$scormimgdir.'/'.$icon.'.gif" alt="'.$strexpand.'" title="'.$strexpand.'"/></a>';
            } else if ($isvisible) {
                $result->toc .= '<img src="'.$scormimgdir.'/spacer.gif" alt=""/>';
            }
            if (empty($sco->title)) {
                $sco->title = $sco->identifier;
            }
            if (!empty($sco->launch)) {
                if ($isvisible) {
                    $startbold = '';
                    $endbold = '';
                    $score = '';
                    if (empty($scoid) && ($mode != 'normal')) {
                        $scoid = $sco->id;
                    }
                    if (isset($usertracks[$sco->identifier])) {
                        $usertrack = $usertracks[$sco->identifier];
                        $strstatus = $usertrack->status;
                        if ($sco->scormtype == 'sco') {
                            $statusicon = '<img src="'.$scormimgdir.'/'.$usertrack->status.'.gif" alt="'.$strstatus.'" title="'.$strstatus.'" />';
                        } else {
                            $statusicon = '<img src="'.$scormimgdir.'/assetc.gif" alt="'.t('Asset launched.').'" title="'.t('Asset launched.').'" />';
                        }

                        if (($usertrack->status == 'notattempted') || ($usertrack->status == 'incomplete') || ($usertrack->status == 'browsed')) {
                            $incomplete = true;
                            if ($play && empty($scoid)) {
                                $scoid = $sco->id;
                            }
                        }
                        if ($usertrack->score_raw != '') {
                            $score = '(Score:&nbsp;'.$usertrack->score_raw.')';
                        }
                        $strsuspended = 'Suspended';
                        if (isset($usertrack->{'cmi.core.exit'}) && ($usertrack->{'cmi.core.exit'} == 'suspend')) {
                            if($usertrack->status !='completed') {
                                $statusicon = '<img src="'.$scormimgdir.'/suspend.gif" alt="'.$strstatus.' - '.$strsuspended.'" title="'.$strstatus.' - '.$strsuspended.'" />';
                            }
                        }
                    } else {
                        if ($play && empty($scoid)) {
                            $scoid = $sco->id;
                        }
                        $incomplete = true;
                        if ($sco->scormtype == 'sco') {
                            $statusicon = '<img src="'.$scormimgdir.'/notattempted.gif" alt="Not attempted" title="Not attempted" />';
                        } else {
                            $statusicon = '<img src="'.$scormimgdir.'/asset.gif" alt="Asset" title="Asset" />';
                        }
                    }
                    if ($sco->id == $scoid) {
                        $startbold = '<b>';
                        $endbold = '</b>';
                        $findnext = true;
                        $shownext = isset($sco->next) ? $sco->next : 0;
                        $showprev = isset($sco->previous) ? $sco->previous : 0;
                    }

                    if (($nextid == 0) && (scorm_count_launchable($scorm->id,$currentorg) > 1) && ($nextsco!==false) && (!$findnext)) {
                        if (!empty($sco->launch)) {
                            $previd = $sco->id;
                        }
                    }
                    if (empty($sco->prerequisites) || scorm_eval_prerequisites($sco->prerequisites,$usertracks)) {
                        if ($sco->id == $scoid) {
                            $result->prerequisites = true;
                        }

                        $url=$base_path.$_GET['q']."?a=$scorm->id.&amp;currentorg=$currentorg$modestr&amp;scoid=$sco->id";
                        //$url = $CFG->wwwroot.'/mod/scorm/player.php?a='.$scorm->id.'&amp;currentorg='.$currentorg.$modestr.'&amp;scoid='.$sco->id;
                        $result->toc .= $statusicon.'&nbsp;'.$startbold.'<a href="'.$url.'" target="_blank">'.$sco->title.'</a>'.$score.$endbold."</li>\n";
                        $tocmenus[$sco->id] = scorm_repeater('&minus;',$level) . '&gt;' . $sco->title;
                    } else {
                        if ($sco->id == $scoid) {
                            $result->prerequisites = false;
                        }
                        $result->toc .= $statusicon.'&nbsp;'.$sco->title."</li>\n";
                    }
                }
            } else {
                $result->toc .= '&nbsp;'.$sco->title."</li>\n";
            }
            if (($nextsco !== false) && ($nextid == 0) && ($findnext)) {
                if (!empty($nextsco->launch)) {
                    $nextid = $nextsco->id;
                }
            }
        }
        for ($i=0;$i<$level;$i++) {
            $result->toc .= "\t\t</ul></li>\n";
        }

        if ($play) {
            // it is possible that scoid is still not set, in this case we dont want an empty object
            if ($scoid) {
                $sco = scorm_get_sco($scoid);
            }
            $sco->previd = $previd;
            $sco->nextid = $nextid;
            $result->sco = $sco;
            $result->incomplete = $incomplete;
        } else {
            $result->incomplete = $incomplete;
        }
    }
    $result->toc .= "\t</ul>\n";
    if ($scorm->hidetoc == 0) {
        $result->toc .= '
          <script type="text/javascript">
          //<![CDATA[
              function expandCollide(which,list,item) {
                  var el = document.ids ? document.ids[list] : document.getElementById ? document.getElementById(list) : document.all[list];
                  which = which.substring(0,(which.length));
                  var el2 = document.ids ? document.ids[which] : document.getElementById ? document.getElementById(which) : document.all[which];
                  if (el.style.display != "none") {
                      el2.src = "'.$scormimgdir.'/plus.gif";
                      el.style.display=\'none\';
                      new cookie("hide:SCORMitem" + item, 1, 356, "/").set();
                  } else {
                      el2.src = "'.$scormimgdir.'/minus.gif";
                      el.style.display=\'block\';
                      new cookie("hide:SCORMitem" + item, 1, -1, "/").set();
                  }
              }
          //]]>
          </script>'."\n";
    }

    $url=$base_path.$_GET['q'].'?a='.$scorm->id.'&amp;currentorg='.$currentorg.$modestr.'&amp;scoid=';
    //$result->tocmenu = popup_form($url,$tocmenus, "tocmenu", $sco->id, '', '', '', true);

    return $result;
}

?>
