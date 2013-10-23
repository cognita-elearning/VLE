<?php
// $Id: node_formatted_body.inc,v 1.2.2.1 2010/01/29 20:18:25 merlinofchaos Exp $

/**
 * Plugins are described by creating a $plugin array which will be used
 * by the system that includes this file.
 */
$plugin = array(
  'single' => TRUE,
  'title' => t('Node body'),
  'icon' => 'icon_node.png',
  'description' => t('The body of the referenced node.'),
  'required context' => new ctools_context_required(t('Node'), 'node'),
  'category' => t('Formatted Node'),
  'defaults' => array(
    'link' => FALSE,
    'format' => 'div',
    'class' => 'node-body',
    'maxlength' => 125,
    'truncate' => 0 ,
    'striptags' => 0
  ), 
);

/**
 * Render the custom content type.
 */
function bc_panel_bonus_formatted_body_content_type_render($subtype, $conf, $panel_args, $context) {
  if (empty($context) || empty($context->data)) {
    return;
  }

  // Get a shortcut to the node.
  $node = $context->data;

  // Load information about the node type.
  $type = node_get_types('type', $node->type);
  
  $output = $node->body ;
  
  if ( $conf['striptags'] == 1 ) {
     $output = strip_tags($output) ;
  }
  
  if ( $conf['truncate'] == 1 ) {
    if ( $conf['maxlength'] > 0 ) {
      $output = truncate_utf8($output,$conf['maxlength'],$conf['wordsafe'],$conf['points']);
    }
  }
  
  $tag = "<" . $conf['format'] ;
  if ( !empty($conf['domid']) ) {
    $tag .= ' id="' . $conf['domid'].'"';
  }
  if ( !empty($conf['class']) ) {
    $tag .= ' class="' . $conf['class'].'"';
  }
  
  if ( $conf['link'] == '1' ) {
    $output = l($output,'node/'.$node->nid,array('html' => true ));
  }

  // Build the content type block.
  $block = new stdClass();
  $block->module  = 'formatted_body';
  $block->title   = $type->title_label;
  $block->content = $output;
  $block->content = $tag .">".  $block->content ."</" . $conf['format'].">" ;
  $block->delta   = $node->nid;

  return $block;
}

/**
 * Returns an edit form for custom type settings.
 */
function bc_panel_bonus_formatted_body_content_type_edit_form(&$form, &$form_state) {
  $conf = $form_state['conf'];
  
  ctools_include('dependent');

  $form['link'] = array(
    '#title' => t('Link to node'),
    '#type' => 'checkbox',
    '#default_value' => $conf['link'],
    '#description' => t('Check here to make the body link to the node.'),
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

  $form['domid'] = array(
    '#title' => t('ID of the node link'),
    '#type' => 'textfield',
    '#default_value' => $conf['domid'],
    '#description' => t('Check here to make the title link to the node.'),
  );

  $form['truncate'] = array(
    '#title' => t('Truncate on'),
    '#type' => 'checkbox',
    '#return_value' => 1,
    '#default_value' => $conf['truncate']
  );  
  
  $form['maxlength'] = array(
    '#title' => t('Max length'),
    '#type' => 'textfield',
    '#default_value' => $conf['maxlength'],
    '#process' => array('ctools_dependent_process'),
    '#dependency' => array('edit-truncate' => array("1")),
  );
  
  $form['points'] = array(
    '#type' => 'checkbox',
    '#title' => t('Add points to text'),
    '#return_value' => 1,
    '#default_value' => $conf['points'],
    '#process' => array('ctools_dependent_process'),
    '#dependency' => array('edit-truncate' => array("1")),
  );
  
  $form['wordsafe'] = array(
    '#type' => 'checkbox',
    '#title' => t('Wordsafe'),
    '#return_value' => 1,
    '#default_value' => $conf['wordsafe'],
    '#process' => array('ctools_dependent_process'),
    '#dependency' => array('edit-truncate' => array("1")),
  );
  
  $form['striptags'] = array(
    '#type' => 'checkbox',
    '#title' => t('Strip html tags'),
    '#return_value' => 1,
    '#default_value' => $conf['striptags']
  );

}

/**
 * Submit handler for the custom type settings form.
 */
function bc_panel_bonus_formatted_body_content_type_edit_form_submit(&$form, &$form_state) {
  // Copy everything from our defaults.
  foreach (array_keys($form_state['plugin']['defaults']) as $key) {
    $form_state['conf'][$key] = $form_state['values'][$key];
  }
}

/**
 * Returns the administrative title for a type.
 */
function bc_panel_bonus_formatted_body_content_type_admin_title($subtype, $conf, $context) {
  return '<p>Donec quis ligula orci. Aenean hendrerit luctus urna. Mauris eu risus et mi viverra fermentum porta sit amet augue! Donec non arcu et nulla tincidunt porta. Integer dolor orci, suscipit dapibus aliquam sed, porttitor ut urna? Donec dolor ipsum, porta non facilisis in, tincidunt in nulla. Sed posuere felis nulla, nec porttitor nibh. Nunc eros dui, malesuada vitae varius nec, sagittis eu felis. Aenean vitae ligula id lorem adipiscing sagittis id id elit. Maecenas gravida tincidunt leo sit amet dictum. Pellentesque molestie mauris a quam placerat a ultrices metus mattis. Aenean sagittis lorem sed ligula tincidunt commodo. Nam quis odio tellus, sed porta velit. Integer egestas accumsan nisl, eget pulvinar lorem vehicula id. Etiam vel felis justo, id porttitor augue. Nulla arcu elit, interdum id mattis nec, adipiscing vitae metus.

Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas faucibus sollicitudin dignissim. Nulla varius venenatis velit at placerat. Integer sit amet eros id nunc rhoncus sollicitudin et a nibh? Cras elementum suscipit mattis. Fusce pellentesque nisl vel massa gravida posuere cursus a lectus. Curabitur hendrerit sed.
  </p>';
}
