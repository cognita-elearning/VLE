<?php
// Plugin definition
$plugin = array(
  'title' => t('Left Sidebar and content'),
  'category' => t('Panel Bonus'),
  'theme' => 'left',
  'admin theme' => 'left_admin',
  'css' => 'left.css',
  'icon' => 'left.gif',
  'panels' => 
	array(
		'content' => t('Content column'),
		'left'	  => t('Left sidebar'),
		'top'	  => t('Top content')
	),
);