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
 * @file
 * SCORM widget hooks and callbacks.
 */



/**
 * Implementation of CCK's hook_widget_info().
 *
 * (Declare information about a widget, including indicating how the default and multiple values for the widget will be handled.)
 */
function SCORM_widget_info() {
  return array(
    'SCORM_widget' => array(
      'label' => t('SCORM'),
      'field types' => array('filefield'),
      'multiple values' => CONTENT_HANDLE_CORE,
      'callbacks' => array('default value' => CONTENT_CALLBACK_CUSTOM),
      'description' => t('Widget for SCORM packages.'),
    ),
  );
}

/**
 * Implementation of CCK's hook_widget_settings().
 *
 * @param $op, $widget
 */
function SCORM_widget_settings($op, $widget) {
  switch ($op) {
    case 'form':
      return SCORM_widget_settings_form($widget);
    case 'save':
      return SCORM_widget_settings_save($widget);
  }
}

/**
 * Implementation of CCK's hook_widget().
 *
 * Assign default properties to item and delegate to SCORM.
 *
 * @param &$form, &$form_state, $field, $items, $delta = 0
 *
 * @return
 *
 */
function SCORM_widget(&$form, &$form_state, $field, $items, $delta = 0) {

  // Start with the SCORM widget as a basic start.
  // Note that SCORM needs to modify $form by reference.
  $element = filefield_widget($form, $form_state, $field, $items, $delta);
  $element ['#upload_validators'] = SCORM_widget_upload_validators($field);


  return $element;
}

/**
 * Get the additional upload validators for a SCORM field.
 *
 * @param $field
 *   The CCK field array.
 * @return
 *   An array suitable for passing to file_save_upload() or the file field
 *   element's '#upload_validators' property.
 */
function SCORM_widget_upload_validators($field) {
  $errors = array();
  $validators = filefield_widget_upload_validators($field);
  $validators['scormcck_validate_manifest'] = array($field);

  return $validators;
}

/**
 * Validator function for SCORM_widget_upload_validators().
 *   (Called from
 * @param
 *     $field
 */
function scormcck_validate_manifest($field) {
  $errors=array();
  $packagedata=scorm_validate_file($field->filepath);
  if (isset($packagedata->errors)) {
    $errors[] = $packagedata->errors;
  }
  else  {
    scorm_delete_files($packagedata->tempdir);
  }
  return $errors;
}


/**
 * Implementation of CCK's hook_widget_settings($op = 'form').
 */
function SCORM_widget_settings_form($widget) {
  $form = module_invoke('filefield', 'widget_settings', 'form', $widget);

 $form['file_extensions'] = array(
    '#type' => 'textfield',
    '#title' => t('Permitted upload file extensions'),
    '#default_value' => is_string($widget['file_extensions']) ? $widget['file_extensions'] :'zip',
    '#size' => 64,
    '#description' => t('Extensions a user can upload to this field. Separate extensions with a space and do not include the leading dot. Leaving this blank will allow users to upload a file with any extension.'),
    '#weight' => 1,
  );

  return $form;
}



/**
 * Implementation of CCK's hook_widget_settings($op = 'save').
 */
function SCORM_widget_settings_save($widget) {
  $filefield_settings = module_invoke('filefield', 'widget_settings', 'save', $widget);
  
  return $filefield_settings;
}

/**
 * Element #value_callback function.
 */
function SCORM_widget_value($element, $edit = FALSE) {
  $field = filefield_widget_value($element, $edit);
  //TODO: !important Check from which filefield is it coming 
  if (!isset($edit) || !$edit || $edit['fid']!=0 ) { 
    return $field;
  }
  
        if ($field['filepath']=='') {
            return $field;
        }
            
            
       $packagedata=scorm_validate_file($field['filepath']);
 
        $scorm->pkgtype = $packagedata->pkgtype;
        $scorm->datadir = $packagedata->datadir;
        $scorm->launch = $packagedata->launch;
        $scorm->parse = 1;
        $scorm->timemodified = time();
       /* if (!scorm_external_link($scorm->reference)) {
            $scorm->md5hash = md5_file($CFG->dataroot.'/'.$scorm->course.'/'.$scorm->reference);
        } else {
            $scorm->dir = $CFG->dataroot.'/'.$scorm->course.'/moddata/scorm';
            $scorm->md5hash = md5_file($scorm->dir.$scorm->datadir.'/'.basename($scorm->reference));
        }*/

        $scorm = scorm_option2text($scorm);
        //TODO: Implement form for user to set height and width for SCORM package
        // pgerling: i am not sure if this influences the display in any way -> seems like something is realy messed up, right now values r fetched by a hack in player.php
        if (empty($field['data']['width'])) {
        $default_width = variable_get('cck_scorm_default_width', CCK_SCORM_DEFAULT_WIDTH);
        }
        else {
        $default_width = $field['data']['width'];
        }
        
        if (empty($field['data']['height'])) {
        $default_height = variable_get('cck_scorm_default_height', CCK_SCORM_DEFAULT_HEIGHT);
        }
        else {
        $default_height = $field['data']['height'];
        }        
//        $scorm->width = '100';
        $scorm->width = $default_width;
//        $scorm->height = '500';
        $scorm->height = $default_height;


        if (!isset($scorm->whatgrade)) {
            $scorm->whatgrade = 0;
        }
        $scorm->grademethod = ($scorm->whatgrade * 10) + $scorm->grademethod;

        //TODO: Do we need this fields:
        $scorm->name="SCORM";
        $scorm->summary="SCORM 2004.";
        $scorm->grademethod='';
        $scorm->maxgrade=100;
        $scorm->maxattempt=0;
        $scorm->updatefreq=0;
        $scorm->course=1;
        
        
         //At this point it is still empty
        $scorm->version='';
        $scorm->skipview=0;
        $scorm->hidebrowse=0;
        $scorm->hidetoc=0;
        $scorm->hidenav=0;
        $scorm->auto=0;
        $scorm->popup=0;
        
        //TODO: Do we still need it?
        //$scorm->reference=$field->filepath;
        
        
        //TODO: Remove MD5 field, we dont use it.
        //$id = insert_record('scorm', $scorm);
        $result = db_query("INSERT INTO {scorm} 
        (course,name,nodereference,reference,summary,version,maxgrade,grademethod,whatgrade,maxattempt,updatefreq,md5hash,launch,
        skipview,hidebrowse,hidetoc,hidenav,auto,popup,options,width,height,timemodified) 
        VALUES (%d,'%s',%d,'%s','%s','%s',%d,%d,%d,%d,%d,'%s',%d,%d,%d,%d,%d,%d,%d,'%s',%d,%d,%d)", $scorm->course, $scorm->name, NULL, NULL, $scorm->summary, $scorm->version,
        $scorm->maxgrade, $scorm->grademethod, $scorm->whatgrade, $scorm->maxattempt, $scorm->updatefreq, NULL, $scorm->launch, $scorm->skipview, $scorm->hidebrowse,
        $scorm->hidetoc, $scorm->hidenav, $scorm->auto, $scorm->popup, $scorm->options, $default_width, $default_height, $scorm->timemodified );
        $id = db_last_insert_id('scorm', 'id'); //$id=mysql_insert_id(); 
   
          //TODO: Test it on Linux
          // Move SCORM from temp dir to scorm dir
          
            $storedir=file_directory_path() .'/SCORM';
            $path=$storedir .'/'. $id;
            
            if (!file_exists($storedir)) {
                    mkdir($storedir);
            }
            $res=mkdir($path);
            if ($res==TRUE) {
             full_copy($packagedata->tempdir, $path);
             //rmdirr($packagedata->tempdir);
             scorm_delete_files($packagedata->tempdir);
             //Replace reference field with node field.
             db_query("UPDATE {scorm} SET reference = '%s' WHERE id = %d", $field['fid'], $id);            
            }
            else
             return FALSE;
       

            $scorm->id = $id;
            //Parse SCORM manifest
            $scorm->launch=scorm_parse_scorm($path, $scorm->id);
            //Save SCORM launch instance
             db_query("UPDATE {scorm} SET launch = '%s' WHERE id = %d", $scorm->launch, $scorm->id);
             return $field;
}

/**
 * Element #process callback function.
 */
function SCORM_widget_process($element, $edit, &$form_state, $form) {
//echo '<pre>';
//print_r($element);
//echo '</pre>';
if(empty($element['#default_value']['data']['width'])) {
$default_width = variable_get('cck_scorm_default_width', CCK_SCORM_DEFAULT_WIDTH);
}
else {
$default_width = $element['#default_value']['data']['width'];
}
if(empty($element['#default_value']['data']['height'])) {
$default_height = variable_get('cck_scorm_default_height', CCK_SCORM_DEFAULT_HEIGHT);
}
else {
$default_height = $element['#default_value']['data']['height'];
}

  $element['data']['width'] = array( 
    '#title' => t( 'Width' ),
    '#type' => 'textfield',
//    '#default_value' => $defaults['width']
    '#default_value' => $default_width,
    '#description' => t('Default value: ') . variable_get('cck_scorm_default_width', CCK_SCORM_DEFAULT_WIDTH) . t('. Leave the field blank to use the default value.')
  );
  
  $element['data']['height'] = array( 
    '#title' => t( 'Height' ),
    '#type' => 'textfield',
//    '#default_value' => $defaults['height'],
    '#default_value' => $default_height,
    '#description' => t('Default value: ') . variable_get('cck_scorm_default_height', CCK_SCORM_DEFAULT_HEIGHT) . t('. Leave the field blank to use the default value.')
  );
     
  $displayOptions = array(t('Embedded'), t('Popup'));
  if (module_exists('lightbox2')){
  	$displayOptions[] = t('Lightbox2');
  }
  $element['data']['display'] = array( 
    '#title' => t( 'Display' ),
    '#type' => 'radios',
    '#default_value' => ($element['#value']['data']['display']>0) ? $element['#value']['data']['display'] : 0,
    '#options' => $displayOptions
  );

  return $element;
}


/**
 * FormAPI theme function. Theme the output of an image field.
 */
function theme_SCORM_widget($element) {
  
  //TAMER: this one doesn't output file upload.
  $z=theme('form_element', $element, $element['#children']);
  
  return $z;
}

function theme_SCORM_widget_preview($item) {
  // Remove the current description so that we get the filename as the link.
  if (isset($item['data']['description'])) {
    unset($item['data']['description']);
  }

  return '<div class="SCORM-file-info">'.
           '<div class="filename">'. theme('SCORM_file', $item) .'</div>'.
           '<div class="filesize">'. format_size($item['filesize']) .'</div>'.
           '<div class="filemime">'. $item['filemime'] .'</div>'.
         '</div>';
}

function theme_SCORM_widget_item($element) {
  return theme('filefield_widget_item', $element);
}

/**
 * Custom theme function for SCORM upload elements.
 *
 * This function allows us to put the "Upload" button immediately after the
 * file upload field by respecting the #field_suffix property.
 */
function theme_SCORM_widget_file($element) {
  $output = '';

  $output .= '<div class="SCORM-upload clear-block">';

  if (isset($element['#field_prefix'])) {
    $output .= $element['#field_prefix'];
  }

  _form_set_class($element, array('form-file'));
  $output .= '<input type="file" name="'. $element['#name'] .'"'. ($element['#attributes'] ? ' '. drupal_attributes($element['#attributes']) : '') .' id="'. $element['#id'] .'" size="'. $element['#size'] ."\" />\n";

  if (isset($element['#field_suffix'])) {
    $output .= $element['#field_suffix'];
  }

  $output .= '</div>';

  return theme('form_element', $element, $output);
}
