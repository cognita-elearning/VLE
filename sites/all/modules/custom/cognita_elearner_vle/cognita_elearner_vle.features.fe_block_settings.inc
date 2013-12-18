<?php

/**
 * Implementation of hook_default_fe_block_settings().
 */
function cognita_elearner_vle_default_fe_block_settings() {
  $export = array();

  // adaptivetheme
  $theme = array();

  $theme['cognita_elearner-0'] = array(
    'module' => 'cognita_elearner',
    'delta' => '0',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '1',
  );

  $theme['cognita_elearner-1'] = array(
    'module' => 'cognita_elearner',
    'delta' => '1',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '1',
  );

  $theme['cognita_elearner-2'] = array(
    'module' => 'cognita_elearner',
    'delta' => '2',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '2',
    'pages' => '<?php
$node = node_load(arg(1));
$idccd=$node->field_elearner_idccd[\'0\'][\'value\'];
if ($idccd != \'\')
 return true;
else
 return false;
?>',
    'title' => '',
    'cache' => '1',
  );

  $theme['menu-menu-administration'] = array(
    'module' => 'menu',
    'delta' => 'menu-administration',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['menu-primary-links'] = array(
    'module' => 'menu',
    'delta' => 'primary-links',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['menu-secondary-links'] = array(
    'module' => 'menu',
    'delta' => 'secondary-links',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['menu_block-1'] = array(
    'module' => 'menu_block',
    'delta' => '1',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => 'Users',
    'cache' => '-1',
  );

  $theme['menu_block-2'] = array(
    'module' => 'menu_block',
    'delta' => '2',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => 'Quizzes',
    'cache' => '-1',
  );

  $theme['menu_block-3'] = array(
    'module' => 'menu_block',
    'delta' => '3',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['simplenews-18'] = array(
    'module' => 'simplenews',
    'delta' => '18',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['simplenews-19'] = array(
    'module' => 'simplenews',
    'delta' => '19',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-my_courses-block_1'] = array(
    'module' => 'views',
    'delta' => 'my_courses-block_1',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-rjesenja_zadataka-block_1'] = array(
    'module' => 'views',
    'delta' => 'rjesenja_zadataka-block_1',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-rjesenja_zadataka-block_2'] = array(
    'module' => 'views',
    'delta' => 'rjesenja_zadataka-block_2',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-zadatak_uz_lekciju-block_1'] = array(
    'module' => 'views',
    'delta' => 'zadatak_uz_lekciju-block_1',
    'theme' => 'adaptivetheme',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $export['adaptivetheme'] = $theme;

  // adaptivetheme_admin
  $theme = array();

  $theme['cognita_elearner-0'] = array(
    'module' => 'cognita_elearner',
    'delta' => '0',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '1',
  );

  $theme['cognita_elearner-1'] = array(
    'module' => 'cognita_elearner',
    'delta' => '1',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '1',
  );

  $theme['cognita_elearner-2'] = array(
    'module' => 'cognita_elearner',
    'delta' => '2',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '2',
    'pages' => '<?php
$node = node_load(arg(1));
$idccd=$node->field_elearner_idccd[\'0\'][\'value\'];
if ($idccd != \'\')
 return true;
else
 return false;
?>',
    'title' => '',
    'cache' => '1',
  );

  $theme['menu-menu-administration'] = array(
    'module' => 'menu',
    'delta' => 'menu-administration',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['menu-primary-links'] = array(
    'module' => 'menu',
    'delta' => 'primary-links',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['menu-secondary-links'] = array(
    'module' => 'menu',
    'delta' => 'secondary-links',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['menu_block-1'] = array(
    'module' => 'menu_block',
    'delta' => '1',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => 'Users',
    'cache' => '-1',
  );

  $theme['menu_block-2'] = array(
    'module' => 'menu_block',
    'delta' => '2',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => 'Quizzes',
    'cache' => '-1',
  );

  $theme['menu_block-3'] = array(
    'module' => 'menu_block',
    'delta' => '3',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['simplenews-18'] = array(
    'module' => 'simplenews',
    'delta' => '18',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['simplenews-19'] = array(
    'module' => 'simplenews',
    'delta' => '19',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-my_courses-block_1'] = array(
    'module' => 'views',
    'delta' => 'my_courses-block_1',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-rjesenja_zadataka-block_1'] = array(
    'module' => 'views',
    'delta' => 'rjesenja_zadataka-block_1',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-rjesenja_zadataka-block_2'] = array(
    'module' => 'views',
    'delta' => 'rjesenja_zadataka-block_2',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-zadatak_uz_lekciju-block_1'] = array(
    'module' => 'views',
    'delta' => 'zadatak_uz_lekciju-block_1',
    'theme' => 'adaptivetheme_admin',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $export['adaptivetheme_admin'] = $theme;

  // corolla
  $theme = array();

  $theme['cognita_elearner-0'] = array(
    'module' => 'cognita_elearner',
    'delta' => '0',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '-4',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '1',
  );

  $theme['cognita_elearner-1'] = array(
    'module' => 'cognita_elearner',
    'delta' => '1',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '-14',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '1',
  );

  $theme['cognita_elearner-2'] = array(
    'module' => 'cognita_elearner',
    'delta' => '2',
    'theme' => 'corolla',
    'status' => '1',
    'weight' => '-16',
    'region' => 'sidebar_second',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '2',
    'pages' => '<?php
$node = node_load(arg(1));
$idccd=$node->field_elearner_idccd[\'0\'][\'value\'];
if ($idccd != \'\')
 return true;
else
 return false;
?>',
    'title' => '',
    'cache' => '1',
  );

  $theme['menu-menu-administration'] = array(
    'module' => 'menu',
    'delta' => 'menu-administration',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['menu-primary-links'] = array(
    'module' => 'menu',
    'delta' => 'primary-links',
    'theme' => 'corolla',
    'status' => '1',
    'weight' => '-4',
    'region' => 'header_menu',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['menu-secondary-links'] = array(
    'module' => 'menu',
    'delta' => 'secondary-links',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '-12',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['menu_block-1'] = array(
    'module' => 'menu_block',
    'delta' => '1',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => 'Users',
    'cache' => '-1',
  );

  $theme['menu_block-2'] = array(
    'module' => 'menu_block',
    'delta' => '2',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => 'Quizzes',
    'cache' => '-1',
  );

  $theme['menu_block-3'] = array(
    'module' => 'menu_block',
    'delta' => '3',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['simplenews-18'] = array(
    'module' => 'simplenews',
    'delta' => '18',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['simplenews-19'] = array(
    'module' => 'simplenews',
    'delta' => '19',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-my_courses-block_1'] = array(
    'module' => 'views',
    'delta' => 'my_courses-block_1',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '-5',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-rjesenja_zadataka-block_1'] = array(
    'module' => 'views',
    'delta' => 'rjesenja_zadataka-block_1',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-rjesenja_zadataka-block_2'] = array(
    'module' => 'views',
    'delta' => 'rjesenja_zadataka-block_2',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-zadatak_uz_lekciju-block_1'] = array(
    'module' => 'views',
    'delta' => 'zadatak_uz_lekciju-block_1',
    'theme' => 'corolla',
    'status' => 0,
    'weight' => '1',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $export['corolla'] = $theme;

  // garland
  $theme = array();

  $theme['cognita_elearner-0'] = array(
    'module' => 'cognita_elearner',
    'delta' => '0',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '1',
  );

  $theme['cognita_elearner-1'] = array(
    'module' => 'cognita_elearner',
    'delta' => '1',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '1',
  );

  $theme['cognita_elearner-2'] = array(
    'module' => 'cognita_elearner',
    'delta' => '2',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '2',
    'pages' => '<?php
$node = node_load(arg(1));
$idccd=$node->field_elearner_idccd[\'0\'][\'value\'];
if ($idccd != \'\')
 return true;
else
 return false;
?>',
    'title' => '',
    'cache' => '1',
  );

  $theme['menu-menu-administration'] = array(
    'module' => 'menu',
    'delta' => 'menu-administration',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['menu-primary-links'] = array(
    'module' => 'menu',
    'delta' => 'primary-links',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['menu-secondary-links'] = array(
    'module' => 'menu',
    'delta' => 'secondary-links',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['menu_block-1'] = array(
    'module' => 'menu_block',
    'delta' => '1',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => 'Users',
    'cache' => '-1',
  );

  $theme['menu_block-2'] = array(
    'module' => 'menu_block',
    'delta' => '2',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => 'Quizzes',
    'cache' => '-1',
  );

  $theme['menu_block-3'] = array(
    'module' => 'menu_block',
    'delta' => '3',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['simplenews-18'] = array(
    'module' => 'simplenews',
    'delta' => '18',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['simplenews-19'] = array(
    'module' => 'simplenews',
    'delta' => '19',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-my_courses-block_1'] = array(
    'module' => 'views',
    'delta' => 'my_courses-block_1',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-rjesenja_zadataka-block_1'] = array(
    'module' => 'views',
    'delta' => 'rjesenja_zadataka-block_1',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-rjesenja_zadataka-block_2'] = array(
    'module' => 'views',
    'delta' => 'rjesenja_zadataka-block_2',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $theme['views-zadatak_uz_lekciju-block_1'] = array(
    'module' => 'views',
    'delta' => 'zadatak_uz_lekciju-block_1',
    'theme' => 'garland',
    'status' => 0,
    'weight' => '0',
    'region' => '',
    'custom' => '0',
    'throttle' => '0',
    'visibility' => '0',
    'pages' => '',
    'title' => '',
    'cache' => '-1',
  );

  $export['garland'] = $theme;

  $theme_default = variable_get('theme_default', 'garland');
  $themes = list_themes();
  foreach ($export as $theme_key => $settings) {
    if ($theme_key != $theme_default && empty($themes[$theme_key]->status)) {
      unset($export[$theme_key]);
    }
  }
  return $export;
}
