<?php
// $Id: node_formatted_title.inc,v 1.2.2.1 2010/01/29 20:18:25 merlinofchaos Exp $

/**
 * Plugins are described by creating a $plugin array which will be used
 * by the system that includes this file.
 */
$plugin = array(
  'single' => TRUE,
  'title' => t('Node title'),
  'icon' => 'icon_node.png',
  'description' => t('The title of the referenced node.'),
  'required context' => new ctools_context_required(t('Node'), 'node'),
  'category' => t('Formatted Node'),
  'defaults' => array(
    'link' => TRUE,
    'format' => 'h2',
    'class' => 'node-title'
  ),
);

/**
 * Render the custom content type.
 */
function bc_panel_bonus_formatted_title_content_type_render($subtype, $conf, $panel_args, $context) {
  if (empty($context) || empty($context->data)) {
    return;
  }

  // Get a shortcut to the node.
  $node = $context->data;

  // Load information about the node type.
  $type = node_get_types('type', $node->type);

  // Build the content type block.
  $block = new stdClass();
  $block->module  = 'formatted_title';
  $block->title   = $type->title_label;
  $block->content = (!empty($conf['link']) ? l($node->title, 'node/'. $node->nid) : check_plain($node->title)) ;
  $block->content = "<" . $conf['format'] .">".  $block->content ."</" . $conf['format'].">" ;
  $block->delta   = $node->nid;

  return $block;
}

/**
 * Returns an edit form for custom type settings.
 */
function bc_panel_bonus_formatted_title_content_type_edit_form(&$form, &$form_state) {
  $conf = $form_state['conf'];

  $form['link'] = array(
    '#title' => t('Link to node'),
    '#type' => 'checkbox',
    '#default_value' => $conf['link'],
    '#description' => t('Check here to make the title link to the node.'),
  );
  
  $form['format'] = array(
    '#title' => t('Format of the node link'),
    '#type' => 'select',
    '#default_value' => $conf['format'],
    '#options' => array('h1' => 'h1','h2' => 'h2','h3' => 'h3','h4' => 'h4','h5' => 'h5','h6' => 'h6','span' => 'span','div' => 'div'),
    '#description' => t('Check here to make the title link to the node.'),
  );
  
  $form['class'] = array(
    '#title' => t('Format class of the node link'),
    '#type' => 'textfield',
    '#default_value' => $conf['class'],
    '#description' => t('Check here to make the title link to the node.'),
  );

}

/**
 * Submit handler for the custom type settings form.
 */
function bc_panel_bonus_formatted_title_content_type_edit_form_submit(&$form, &$form_state) {
  // Copy everything from our defaults.
  foreach (array_keys($form_state['plugin']['defaults']) as $key) {
    $form_state['conf'][$key] = $form_state['values'][$key];
  }
}

/**
 * Returns the administrative title for a type.
 */
function bc_panel_bonus_formatted_title_content_type_admin_title($subtype, $conf, $context) {
  return t('Node title');
}
