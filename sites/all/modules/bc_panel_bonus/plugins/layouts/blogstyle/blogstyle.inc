<?php
// Plugin definition
$plugin = array(
  'title' => t('Content left, 2 Columns right'),
  'category' => t('Panel Bonus'),
  'theme' => 'blogstyle',
  'admin theme' => 'blogstyle_admin',
  'css' => 'blogstyle.css',
  'icon' => 'blogstyle.gif',
  'panels' => 
	array(
		'content' => t('Content column'),
		'left'	  => t('First right sidebar'),
		'right'	  => t('Second right sidebar')
	),
);