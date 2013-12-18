<?php

/**
 * Implementation of hook_fieldgroup_default_groups().
 */
function cognita_elearner_vle_fieldgroup_default_groups() {
  $groups = array();

  // Exported group: group_elearner_lms
  $groups['course-group_elearner_lms'] = array(
    'group_type' => 'standard',
    'type_name' => 'course',
    'group_name' => 'group_elearner_lms',
    'label' => 'eLearner LMS',
    'settings' => array(
      'form' => array(
        'style' => 'fieldset',
        'description' => '',
      ),
      'display' => array(
        'description' => '',
        '5' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'teaser' => array(
          'format' => 'hidden',
          'exclude' => 0,
        ),
        'full' => array(
          'format' => 'hidden',
          'exclude' => 0,
        ),
        '4' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        '2' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        '3' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'token' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'label' => 'hidden',
      ),
    ),
    'weight' => '1',
    'fields' => array(
      '0' => 'field_elearner_idccd',
    ),
  );

  // Translatables
  // Included for use with string extractors like potx.
  t('eLearner LMS');

  return $groups;
}
