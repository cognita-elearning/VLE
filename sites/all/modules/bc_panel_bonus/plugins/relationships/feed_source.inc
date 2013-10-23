<?php
$plugin = array(
  'title' => t('Feed Source'),
  'keyword' => 'feed_source',
  'description' => t('Get feed source as node.'),
  'required context' => new ctools_context_required(t('Node'), 'node'),
  'context' => 'ctools_feed_source_context',
);

/**
 * Return a new context based on an existing context.
 */
function ctools_feed_source_context($context, $conf) {
  // If unset it wants a generic, unfilled context, which is just NULL.
  if (empty($context->data)) {
    return ctools_context_create_empty('node');
  }
  if ( isset($context->data->feeds_node_item)  && is_object($node = node_load($context->data->feeds_node_item->feed_nid) )) {
  	return ctools_context_create('node', $node);
  }
}