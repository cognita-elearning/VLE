<?php
/**
 * @file
 * Views include file with views hooks.
 */

/**
 * Implementation of hook_views_plugins().
 */

function bc_panel_bonus_views_plugins() {
  return array(
    'row' => array(
      'mini_panels' => array(
        'title' => t('Mini panels'),
        'help' => t('Display views items devided into 3 columns.'),
        'handler' => 'bc_panel_bonus_plugin_style_mini_panels',
  		'uses options' => TRUE,
        'uses fields' => false,
        'type' => 'normal',
  		'theme' => 'mini-panel-row'
      ),
    )
  );
}
