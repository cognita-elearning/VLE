<?php
// Plugin definition
$plugin = array(
  'title' => t('Right Sidebar and content'),
  'category' => t('Panel Bonus'),
  'theme' => 'right',
  'admin theme' => 'right_admin',
  'css' => 'right.css',
  'icon' => 'right.gif',
  'panels' => 
	array(
		'content' => t('Content column'),
		'right'	  => t('Right sidebar'),
		'top'	  => t('Content Top')
	),
);