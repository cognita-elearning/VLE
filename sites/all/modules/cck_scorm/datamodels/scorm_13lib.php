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
function scorm_get_toc($scorm,$liststyle,$currentorg='',$scoid='',$mode='normal',$attempt='',$play=false) {
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
            if ($parents[$level]!=$sco->parent) {
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
                    $parents[$level]=$sco->parent;
                }
            }
            if (isset($scoes[$pos+1])) {
                $nextsco = $scoes[$pos+1];
            } else {
                $nextsco = false;
            }
            $nextisvisible = false;
            if (!isset($nextsco->isvisible) || (isset($nextsco->isvisible) && ($nextsco->isvisible == 'true'))) {
                $nextisvisible = true;
            }
            if ($nextisvisible && ($nextsco !== false) && ($sco->parent != $nextsco->parent) &&
               (($level==0) || (($level>0) && ($nextsco->parent == $sco->identifier)))) {
                $sublist++;
                $icon = 'minus';
                //TODO: Do we need these COOKIES?
                if (isset($_COOKIE['hide:SCORMitem'.$nextsco->id])) {
                    $icon = 'plus';
                }
                $result->toc .= "\t\t".'<li><a href="javascript:expandCollide(\'img'.$sublist.'\',\'s'.$sublist.'\','.$nextsco->id.');">'.
                                '<img id="img'.$sublist.'" src="'.$scormimgdir.'/'.$icon.'.gif" alt="'.$strexpand.'" title="'.$strexpand.'"/></a>';
            } else if ($isvisible) {
                $result->toc .= "\t\t".'<li><img src="'.$scormimgdir.'/spacer.gif" alt="" />';
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
                            $statusicon = '<img src="'.$scormimgdir.'/assetc.gif" alt="Asset launched" title="Asset launched" />';
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
                        if ($sco->scormtype == 'sco') {
                            $statusicon = '<img src="'.$scormimgdir.'/notattempted.gif" alt="Not attempted" title="Not attempted" />';
                            $incomplete = true;
                        } else {
                            $statusicon = '<img src="'.$scormimgdir.'/asset.gif" alt="Asset" title="Asset" />';
                        }
                    }

                    if ($sco->id == $scoid) {
                        $startbold = '<b>';
                        $endbold = '</b>';
                        $findnext = true;
                        $shownext = isset($sco->next) ? $sco->next : 0;
                        $showprev = isset($sco->prev) ? $sco->prev : 0;
                    }

                    if (($nextid == 0) && (scorm_count_launchable($scorm->id,$currentorg) > 1) && ($nextsco!==false) && (!$findnext)) {
                        if (!empty($sco->launch)) {
                            $previd = $sco->id;
                        }
                    }
                    //TODO:Include sequencing library
                    //require_once('sequencinglib.php');
                    //if (scorm_seq_evaluate($sco->id,$usertracks)) {
                    if(true){
                        if ($sco->id == $scoid) {
                            $result->prerequisites = true;
                        }
                            $url = $base_path.$_GET['q'].'?a='.$scorm->id.'&amp;currentorg='.$currentorg.$modestr.'&amp;scoid='.$sco->id;
                            $result->toc .= $statusicon.'&nbsp;'.$startbold.'<a href="'.$url.'">'.$sco->title.'</a>'.$score.$endbold."</li>\n";
                            $tocmenus[$sco->id] = scorm_repeater('&minus;',$level) . '&gt;' . $sco->title;
                    } else {
                        if ($sco->id == $scoid) {
                            $result->prerequisites = false;
                        }
                        $result->toc .= '&nbsp;'.$sco->title."</li>\n";
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

    $url = $base_path.$_GET['q'].'?a='.$scorm->id.'&amp;currentorg='.$currentorg.$modestr.'&amp;scoid=';
    //TODO:Do we need tocmenus?
    //$result->tocmenu = popup_form($url,$tocmenus, "tocmenu", $sco->id, '', '', '', true);

    return $result;
}

?>