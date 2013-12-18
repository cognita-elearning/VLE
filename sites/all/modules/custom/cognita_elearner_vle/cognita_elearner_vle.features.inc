<?php

/**
 * Implementation of hook_ctools_plugin_api().
 */
function cognita_elearner_vle_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "page_manager" && $api == "pages_default") {
    return array("version" => 1);
  }
}

/**
 * Implementation of hook_node_info().
 */
function cognita_elearner_vle_node_info() {
  $items = array(
    'book_assignment' => array(
      'name' => t('Book assignment'),
      'module' => 'features',
      'description' => t('Book page with user upload.'),
      'has_title' => '1',
      'title_label' => t('Naslov'),
      'has_body' => '1',
      'body_label' => t('Tijelo'),
      'min_word_count' => '0',
      'help' => '',
    ),
    'comment' => array(
      'name' => t('Rješenje zadatka'),
      'module' => 'features',
      'description' => t('Pronađite stranicu sa zadatakom u tečaju i kliknite "Dodaj svoje rješenje".'),
      'has_title' => '1',
      'title_label' => t('Naslov'),
      'has_body' => '0',
      'body_label' => '',
      'min_word_count' => '0',
      'help' => '',
    ),
    'course' => array(
      'name' => t('Course'),
      'module' => 'features',
      'description' => t('A Course is a basic hierarchy structure for book pages.'),
      'has_title' => '1',
      'title_label' => t('Naslov'),
      'has_body' => '1',
      'body_label' => t('Opis'),
      'min_word_count' => '0',
      'help' => '',
    ),
  );
  return $items;
}

/**
 * Implementation of hook_rules_defaults().
 */
function cognita_elearner_vle_rules_defaults() {
  return array(
    'rules' => array(
      'rules_update_elearner_lms_lesson_status' => array(
        '#type' => 'rule',
        '#set' => 'event_node_update',
        '#label' => 'Update eLearner LMS lesson status',
        '#active' => 1,
        '#weight' => '0',
        '#categories' => array(
          '0' => 'elearner',
          'cognita_elearner_vle' => 'cognita_elearner_vle',
        ),
        '#status' => 'default',
        '#conditions' => array(
          '0' => array(
            '#type' => 'condition',
            '#settings' => array(
              'type' => array(
                'comment' => 'comment',
              ),
              '#argument map' => array(
                'node' => 'node',
              ),
            ),
            '#name' => 'rules_condition_content_is_type',
            '#info' => array(
              'label' => 'Updated content is Rješenje zadatka',
              'arguments' => array(
                'node' => array(
                  'type' => 'node',
                  'label' => 'Sadržaj',
                ),
              ),
              'module' => 'Node',
            ),
            '#weight' => 0,
          ),
        ),
        '#actions' => array(
          '0' => array(
            '#weight' => 0,
            '#info' => array(
              'label' => 'Execute custom PHP code',
              'module' => 'PHP',
              'eval input' => array(
                '0' => 'code',
              ),
            ),
            '#name' => 'rules_action_custom_php',
            '#settings' => array(
              'code' => '//drupal_set_message("aaa");
/*
drupal_set_message(\'nodeid zadatak=\' . $node->field_assignment_answer_referer[0][nid]);
$node1 = node_load($node->field_assignment_answer_referer[0][nid]);
drupal_set_message(\'nodeid lekcija=\' . $node1->field_backref_264b8559e2bf14f625[0][nid] . \' - \' . $node1->field_assignment_reference);
*/


$nodeId=$node->field_assignment_answer_referer[0][nid];
$sql="
SELECT node.nid AS nodeNid
 FROM node 
 JOIN content_type_book 
  ON node.nid=content_type_book.nid
  AND node.vid=content_type_book.vid
 WHERE content_type_book.field_assignment_reference_nid={$nodeId}
";
$result=db_query($sql);
$id=mysql_fetch_object($result);
$bookNode=node_load($id->nodeNid);
$idscodynamics=$bookNode->field_elearner_idscodynamics[0][value];
$idccd =$bookNode->field_elearner_idccd[0][value];

//global $user;
$uid = $node->uid;
$u = user_load($uid);
profile_load_profile($u);
$lmsid = $u->profile_elearner_userid;
$maxscore=$node->field_score_max[0][value];
$score=$node->field_score[0][value];
$status=$node->field_sco_status[0][value];


if ($idccd == \'\' || $lmsid == \'\')
 break; 

//drupal_set_message( variable_get(\'cognita_elearner_updatescostatus_url\',\'\') . \'?userid=\' . $lmsid . \'&idccd=\' . $idccd . \'&idscodynamics=\' . $idscodynamics . \'&lms=\' . variable_get(\'cognita_elearner_app_url\',\'\') . \'&score=\' . $score . \'&maxscore=\' . $maxscore . "&status=".$status);

$content = file_get_contents(variable_get(\'cognita_elearner_updatescostatus_url\',\'\') . \'?userid=\' . $lmsid . \'&idccd=\' . $idccd . \'&idscodynamics=\' . $idscodynamics . \'&lms=\' . variable_get(\'cognita_elearner_app_url\',\'\') . \'&score=\' . $score . \'&maxscore=\' . $maxscore . "&status=".$status);


if( $content == FALSE ) {
  // add your JS into $content
  $content = t(\'Invalid settings\');
}
',
              'vars' => array(
                '0' => 'node',
                '1' => 'user',
              ),
              '#eval input' => array(
                'token_rules_input_evaluator' => array(
                  'code' => array(
                    '0' => ':global',
                  ),
                ),
              ),
            ),
            '#type' => 'action',
          ),
        ),
        '#version' => 6003,
      ),
    ),
  );
}

/**
 * Implementation of hook_taskbar_default_items().
 */
function cognita_elearner_vle_taskbar_default_items() {
  $items = array();

  $items['logout'] = array(
    'name' => 'logout',
    'title' => 'logout',
    'provider' => 'link',
    'region' => 'left',
    'status' => '1',
    'weight' => '-3',
    'settings' => array(
      'text' => 'logout',
      'description' => 'logout',
      'roles' => array(),
      'refresh' => FALSE,
      'ajax' => FALSE,
      'update' => FALSE,
      'ajax refresh' => 0,
      'links' => array(
        'link1' => array(
          'url' => 'logout',
          'title' => 'Logout',
          'options' => array(),
        ),
      ),
    ),
    'export_type' => 1,
  );

  $items['quizzes'] = array(
    'name' => 'quizzes',
    'title' => 'quizzes',
    'provider' => 'block',
    'region' => 'right',
    'status' => '1',
    'weight' => '-1',
    'settings' => array(
      'text' => 'Quizzes',
      'description' => 'quizzes',
      'roles' => array(),
      'refresh' => FALSE,
      'ajax' => FALSE,
      'update' => FALSE,
      'ajax refresh' => '0',
      'module' => 'menu_block',
      'delta' => '2',
    ),
    'export_type' => 1,
  );

  $items['settings'] = array(
    'name' => 'settings',
    'title' => 'settings',
    'provider' => 'block',
    'region' => 'right',
    'status' => '1',
    'weight' => '0',
    'settings' => array(
      'text' => 'Settings',
      'description' => 'settings',
      'roles' => array(),
      'refresh' => FALSE,
      'ajax' => FALSE,
      'update' => FALSE,
      'ajax refresh' => '0',
      'module' => 'menu_block',
      'delta' => '3',
    ),
    'export_type' => 1,
  );

  $items['users'] = array(
    'name' => 'users',
    'title' => 'users',
    'provider' => 'block',
    'region' => 'right',
    'status' => '1',
    'weight' => '-2',
    'settings' => array(
      'text' => 'Users',
      'description' => 'users',
      'roles' => array(),
      'refresh' => FALSE,
      'ajax' => FALSE,
      'update' => FALSE,
      'ajax refresh' => '0',
      'module' => 'menu_block',
      'delta' => '1',
    ),
    'export_type' => 1,
  );

  return $items;
}

/**
 * Implementation of hook_views_api().
 */
function cognita_elearner_vle_views_api() {
  return array(
    'api' => '2',
  );
}
