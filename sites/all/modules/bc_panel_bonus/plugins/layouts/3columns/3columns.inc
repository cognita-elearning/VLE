<?php
// Plugin definition
$plugin = array(
  'title' => t('Left and right sidebar'),
  'category' => t('Panel Bonus'),
  'theme' => '3columns',
  'admin theme' => '3columns_admin',
  'css' => '3columns.css',
  'icon' => '3columns.gif',
  'panels' => 
	array(
		'content' => t('Content column'),
		'left'	  => t('First right sidebar'),
		'right'	  => t('Second right sidebar')
	),
);