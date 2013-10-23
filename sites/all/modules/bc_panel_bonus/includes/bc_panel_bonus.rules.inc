<?php
function bc_panel_bonus_rules_action_info() {
  $info = array();
  $info['bc_panel_bonus_rule_set_build_mode'] = array(
    'label' => t('Set a new build mode'),
    'arguments' => array(
      'node' => array(
        'type' => 'node',
        'label' => t('Content'),
      ),
    ),
    'configurable' => true,
    'eval input' => array('buildmode'),
    'module' => 'Panel',
  );
  return $info;
}

function bc_panel_bonus_rule_set_build_mode(&$node, $settings, $element, &$state) {
	$minis = bc_panel_bonus_content_build_modes();
    $node->build_mode = $settings['buildmode'];
	$node->panel_build_mode_info = array('panel' => drupal_substr($settings['buildmode'],drupal_strlen(BC_PANELS_BUILD_MODE_PREFIX)) ) ;
}

function bc_panel_bonus_rule_set_build_mode_form($settings = array(), &$form) {
  $minis = bc_panel_bonus_content_build_modes();
  
  $opts = array();
  foreach ( $minis as  $key => $mini ) {
  	$opts[$key] = $mini['title'] ;
  }
  
  array_unshift($opts,t('System default')) ;
  
  $form['settings']['buildmode'] = array(
  	'#type' => 'select',
  	'#title' => t('Select build mode'),
  	'#options' => $opts
  );
}
