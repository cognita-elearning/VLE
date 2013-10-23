<?php
/**
 * @file SCORM_FORMATTER.inc
 */
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

include ('player.php');

/**
* Theme function for 'embedded' SCORM field formatter.
*/
function theme_SCORM_formatter_SCORM_embedded($element) {
  //Return SCORM content embedded in iframe
  global $user;
  //Get SCORM object from #item fid  
  $fileid=$element['#item']['fid'];
  $scorm = db_fetch_object(db_query("SELECT * FROM {scorm} WHERE reference= %d", $fileid));
  
  //Save node reference to scorm
  if (is_null($scorm->nodereference) || $scorm->nodereference==0) {
    //TODO: Find better way to obtain node id.
    $nid=str_replace('node/', '', $_GET['q']);
    db_query("UPDATE {scorm} SET nodereference=%d WHERE id=%d", $nid, $scorm->id);
  }
    
    //TODO:Here we handle Exit request
  /* if(isset($_GET['mode']) && $_GET['mode']=='Exit' && isset($_GET['scoid']))
   {
      //db_query("UPDATE {scorm_grades} SET endtime=%d WHERE scoid=%d and userid=%d",time(),$_GET['scoid'],$user->uid);
                
   }  */
   
   if (empty($element['#item']['data']['height'])) {
   $height = $scorm->height;
   }
   else {
   $height = $element['#item']['data']['height'];
   }
   
   if (isset($_GET['currentorg']) && isset($_GET['scoid'])) {
     //Play SCORM lecture 
//      $output = player($scorm, $_GET['currentorg'], $_GET['scoid'], $element['#item']['data']['width'], $element['#item']['data']['height'], $element['#item']['data']['display']);
      $output = player($scorm, $_GET['currentorg'], $_GET['scoid'], $element['#item']['data']['width'], $height, $element['#item']['data']['display']); 
 
   }
   
   else {
     //$output=scorm_view_display($scorm); //Display launchable SCOs
     $scoid = autoplay($scorm->id);
     if (!$scoid) {
          $output = scorm_view_display($scorm); //Display launchable SCOs
     }
     else {
//        $output = player($scorm, $scoid->organization, $scoid->id, $element['#item']['data']['width'], $element['#item']['data']['height'], $element['#item']['data']['display']);
        $output = player($scorm, $scoid->organization, $scoid->id, $element['#item']['data']['width'], $height, $element['#item']['data']['display']); 
         
     }
     
    
   }
    return $output;
}

/* 
 * Theme function for popup SCORM field formatter. 
 * DEPRECATED: Please remove it,popup is now rendered in theme_SCORM_formatter_SCORM_embedded
 */
function theme_SCORM_formatter_SCORM_popup($element) {
  $nid = $element['#item']['nid'];
  $link_id = 'popup-'. $nid; // we want an unique id for each link so we can tell popups api to only do those =)
  $output = '';
  if (!empty($nid) && is_numeric($nid) && ($title = _nodereference_titles($nid))) {
    $output = l($title, 'node/'. $nid, array('attributes' => array('id' => $link_id)));
  }
  popups_add_popups(array('#'. $link_id));
  return $output;
}

/**
 * Theme function for any file that is managed by FileField.
 *
 * It doesn't really format stuff by itself but rather redirects to other
 * formatters that are telling us they want to handle the concerned file.
 *
 * This function checks if the file may be shown and returns an empty string
 * if viewing the file is not allowed for any reason. If you need to display it
 * in any case, please use theme('filefield') instead.
 */
function theme_SCORM_item($file, $field) {
  if (filefield_view_access($field['field_name']) && filefield_file_listed($file, $field)) {
    return theme('filefield_file', $file);
  }
  return '';
}

/**
 * Theme function for the 'generic' single file formatter.
 */
function theme_SCORM_file($file) {
  // Views may call this function with a NULL value, return an empty string.
  if (empty($file['fid'])) {
    return '';
  }

  $path = $file['filepath'];
  $url = file_create_url($path);
  $icon = theme('filefield_icon', $file);

  // Set options as per anchor format described at
  // http://microformats.org/wiki/file-format-examples
  // TODO: Possibly move to until I move to the more complex format described 
  // at http://darrelopry.com/story/microformats-and-media-rfc-if-you-js-or-css
  $options = array(
    'attributes' => array(
      'type' => $file['filemime'] . '; length=' . $file['filesize'],
    ),
  );

  // Use the description as the link text if available.
  if (empty($file['data']['description'])) {
    $link_text = $file['filename'];
  }
  else {
    $link_text = $file['data']['description'];
    $options['attributes']['title'] = $file['filename'];
  }

  return '<div class="filefield-file clear-block">'. $icon . l($link_text, $url, $options) .'</div>';
}
