<?php

/**
 * Plugins are described by creating a $plugin array which will be used
 * by the system that includes this file.
 */
$plugin = array(
  'single' => TRUE,
  'title' => t('Webform'),
  'icon' => 'icon_term.png',
  'description' => t('Show Webform.'),
  'required context' => new ctools_context_required(t('Node'), 'node'),
  'category' => t('Node'),
);

function bc_panel_bonus_webform_content_type_render($subtype, $conf, $panel_args, $context) {
  $node = isset($context->data) ? drupal_clone($context->data) : NULL;
  $block = new stdClass();
  $block->module = 'node_type';

  if ( !isset($node->webform) ) return ;

  $block->title = $node->title;
  if ($node) {
  	module_load_include('module','webform');
  	webform_node_view($node,0,1);
    $block->content = $node->content['webform']['#value'];
    
    $block->delta = $node->nid;

  }
  else {
    $block->content = t('Webform goes here.');
    $block->delta = 'unknown';
  }

  return $block;
}

function bc_panel_bonus_webform_content_type_admin_title($subtype, $conf, $context) {
  return t('"@s" Webform goes here', array('@s' => $context->identifier));
}

function bc_panel_bonus_webform_content_type_edit_form(&$form, &$form_state) {
  // provide a blank form so we have a place to have context setting.
}
