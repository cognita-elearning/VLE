<?php

/**
 * Implementation of hook_menu_default_menu_links().
 */
function cognita_elearner_vle_menu_default_menu_links() {
  $menu_links = array();

  // Exported menu link: menu-administration:admin/content/taxonomy/3
  $menu_links['menu-administration:admin/content/taxonomy/3'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/content/taxonomy/3',
    'router_path' => 'admin/content/taxonomy/%',
    'link_title' => 'Organization units',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '8',
    'parent_path' => 'nolink/3775',
  );
  // Exported menu link: menu-administration:admin/content/taxonomy/3/add/term
  $menu_links['menu-administration:admin/content/taxonomy/3/add/term'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/content/taxonomy/3/add/term',
    'router_path' => 'admin/content/taxonomy/%/add/term',
    'link_title' => 'Add organization unit',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '9',
    'parent_path' => 'nolink/3775',
  );
  // Exported menu link: menu-administration:admin/content/taxonomy/4
  $menu_links['menu-administration:admin/content/taxonomy/4'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/content/taxonomy/4',
    'router_path' => 'admin/content/taxonomy/%',
    'link_title' => 'All locations',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '10',
    'parent_path' => 'nolink/3775',
  );
  // Exported menu link: menu-administration:admin/content/taxonomy/4/add/term
  $menu_links['menu-administration:admin/content/taxonomy/4/add/term'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/content/taxonomy/4/add/term',
    'router_path' => 'admin/content/taxonomy/%/add/term',
    'link_title' => 'Add location',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '11',
    'parent_path' => 'nolink/3775',
  );
  // Exported menu link: menu-administration:admin/content/taxonomy/5
  $menu_links['menu-administration:admin/content/taxonomy/5'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/content/taxonomy/5',
    'router_path' => 'admin/content/taxonomy/%',
    'link_title' => 'All question pools',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '8',
    'parent_path' => 'nolink/3774',
  );
  // Exported menu link: menu-administration:admin/content/taxonomy/5/add/term
  $menu_links['menu-administration:admin/content/taxonomy/5/add/term'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/content/taxonomy/5/add/term',
    'router_path' => 'admin/content/taxonomy/%/add/term',
    'link_title' => 'Add question pool',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '9',
    'parent_path' => 'nolink/3774',
  );
  // Exported menu link: menu-administration:admin/quiz/import_export/questions_import
  $menu_links['menu-administration:admin/quiz/import_export/questions_import'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/import_export/questions_import',
    'router_path' => 'admin/quiz/import_export/questions_import',
    'link_title' => 'Import questions',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '10',
    'parent_path' => 'nolink/3774',
  );
  // Exported menu link: menu-administration:admin/quiz/import_export/questions_reimport
  $menu_links['menu-administration:admin/quiz/import_export/questions_reimport'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/import_export/questions_reimport',
    'router_path' => 'admin/quiz/import_export/questions_reimport',
    'link_title' => 'Reimport questions',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '11',
    'parent_path' => 'nolink/3774',
  );
  // Exported menu link: menu-administration:admin/quiz/import_export/results_export
  $menu_links['menu-administration:admin/quiz/import_export/results_export'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/import_export/results_export',
    'router_path' => 'admin/quiz/import_export/results_export',
    'link_title' => 'Export quiz results',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '10',
    'parent_path' => 'nolink/3795',
  );
  // Exported menu link: menu-administration:admin/quiz/list
  $menu_links['menu-administration:admin/quiz/list'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/list',
    'router_path' => 'admin/quiz',
    'link_title' => 'All quizzes',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '5',
    'parent_path' => 'nolink/3774',
  );
  // Exported menu link: menu-administration:admin/quiz/my-pool-questions
  $menu_links['menu-administration:admin/quiz/my-pool-questions'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/my-pool-questions',
    'router_path' => 'admin/quiz',
    'link_title' => 'List my pool questions',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '14',
    'parent_path' => 'nolink/3785',
  );
  // Exported menu link: menu-administration:admin/quiz/my-questions
  $menu_links['menu-administration:admin/quiz/my-questions'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/my-questions',
    'router_path' => 'admin/quiz',
    'link_title' => 'List my questions',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '13',
    'parent_path' => 'nolink/3785',
  );
  // Exported menu link: menu-administration:admin/quiz/questions/list
  $menu_links['menu-administration:admin/quiz/questions/list'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/questions/list',
    'router_path' => 'admin/quiz',
    'link_title' => 'All questions',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '7',
    'parent_path' => 'nolink/3774',
  );
  // Exported menu link: menu-administration:admin/quiz/reports/avg-per-user-and-pool
  $menu_links['menu-administration:admin/quiz/reports/avg-per-user-and-pool'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/reports/avg-per-user-and-pool',
    'router_path' => 'admin/quiz/reports/avg-per-user-and-pool',
    'link_title' => 'Pool results per user',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '9',
    'parent_path' => 'nolink/3795',
  );
  // Exported menu link: menu-administration:admin/quiz/reports/score-long-answer
  $menu_links['menu-administration:admin/quiz/reports/score-long-answer'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/reports/score-long-answer',
    'router_path' => 'admin/quiz/reports/score-long-answer',
    'link_title' => 'Score long answer questions',
    'options' => array(
      'attributes' => array(
        'title' => 'Score the answers from quizzes that use long answer questions.',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '11',
    'parent_path' => 'nolink/3799',
  );
  // Exported menu link: menu-administration:admin/quiz/reports/stats/creator
  $menu_links['menu-administration:admin/quiz/reports/stats/creator'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/reports/stats/creator',
    'router_path' => 'admin/quiz/reports/stats/creator',
    'link_title' => 'Quiz statistics',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '7',
    'parent_path' => 'nolink/3795',
  );
  // Exported menu link: menu-administration:admin/quiz/settings/config
  $menu_links['menu-administration:admin/quiz/settings/config'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/settings/config',
    'router_path' => 'admin/quiz/settings/config',
    'link_title' => 'Quiz settings',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '6',
    'parent_path' => 'nolink/3775',
  );
  // Exported menu link: menu-administration:admin/quiz/settings/questions_settings
  $menu_links['menu-administration:admin/quiz/settings/questions_settings'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/settings/questions_settings',
    'router_path' => 'admin/quiz/settings/questions_settings',
    'link_title' => 'Questions settings',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '5',
    'parent_path' => 'nolink/3775',
  );
  // Exported menu link: menu-administration:admin/quiz/settings/quiz_form
  $menu_links['menu-administration:admin/quiz/settings/quiz_form'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/quiz/settings/quiz_form',
    'router_path' => 'admin/quiz/settings/quiz_form',
    'link_title' => 'Default quiz settings',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '7',
    'parent_path' => 'nolink/3775',
  );
  // Exported menu link: menu-administration:admin/user/user
  $menu_links['menu-administration:admin/user/user'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/user/user',
    'router_path' => 'admin/user/user',
    'link_title' => 'All users',
    'options' => array(
      'attributes' => array(
        'title' => 'Upravljajte korisnicima, grupama i pristupom mogućnostima web lokacije.',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '2',
    'parent_path' => 'nolink/3773',
  );
  // Exported menu link: menu-administration:admin/user/user/create
  $menu_links['menu-administration:admin/user/user/create'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'admin/user/user/create',
    'router_path' => 'admin/user/user/create',
    'link_title' => 'Add new user',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '3',
    'parent_path' => 'nolink/3773',
  );
  // Exported menu link: menu-administration:node/add/long-answer
  $menu_links['menu-administration:node/add/long-answer'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'node/add/long-answer',
    'router_path' => 'node/add/long-answer',
    'link_title' => 'New Long answer question',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '17',
    'parent_path' => 'nolink/3785',
  );
  // Exported menu link: menu-administration:node/add/matching
  $menu_links['menu-administration:node/add/matching'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'node/add/matching',
    'router_path' => 'node/add/matching',
    'link_title' => 'New Matching question',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '19',
    'parent_path' => 'nolink/3785',
  );
  // Exported menu link: menu-administration:node/add/multichoice
  $menu_links['menu-administration:node/add/multichoice'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'node/add/multichoice',
    'router_path' => 'node/add/multichoice',
    'link_title' => 'New Multiple choice question',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '16',
    'parent_path' => 'nolink/3785',
  );
  // Exported menu link: menu-administration:node/add/quiz
  $menu_links['menu-administration:node/add/quiz'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'node/add/quiz',
    'router_path' => 'node/add/quiz',
    'link_title' => 'New quiz',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '6',
    'parent_path' => 'nolink/3774',
  );
  // Exported menu link: menu-administration:node/add/quiz-assignment
  $menu_links['menu-administration:node/add/quiz-assignment'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'node/add/quiz-assignment',
    'router_path' => 'node/add/quiz-assignment',
    'link_title' => 'New Assignment question',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '20',
    'parent_path' => 'nolink/3785',
  );
  // Exported menu link: menu-administration:node/add/scale
  $menu_links['menu-administration:node/add/scale'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'node/add/scale',
    'router_path' => 'node/add/scale',
    'link_title' => 'New Scale question',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '21',
    'parent_path' => 'nolink/3785',
  );
  // Exported menu link: menu-administration:node/add/short-answer
  $menu_links['menu-administration:node/add/short-answer'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'node/add/short-answer',
    'router_path' => 'node/add/short-answer',
    'link_title' => 'New Short answer question',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '18',
    'parent_path' => 'nolink/3785',
  );
  // Exported menu link: menu-administration:node/add/truefalse
  $menu_links['menu-administration:node/add/truefalse'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'node/add/truefalse',
    'router_path' => 'node/add/truefalse',
    'link_title' => 'New True/False question',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '15',
    'parent_path' => 'nolink/3785',
  );
  // Exported menu link: menu-administration:nolink/3773
  $menu_links['menu-administration:nolink/3773'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'nolink/3773',
    'router_path' => 'nolink',
    'link_title' => 'Users',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '1',
    'expanded' => '1',
    'weight' => '1',
  );
  // Exported menu link: menu-administration:nolink/3774
  $menu_links['menu-administration:nolink/3774'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'nolink/3774',
    'router_path' => 'nolink',
    'link_title' => 'Quizzes',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '1',
    'expanded' => '1',
    'weight' => '3',
  );
  // Exported menu link: menu-administration:nolink/3775
  $menu_links['menu-administration:nolink/3775'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'nolink/3775',
    'router_path' => 'nolink',
    'link_title' => 'Settings',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '1',
    'expanded' => '1',
    'weight' => '4',
  );
  // Exported menu link: menu-administration:nolink/3785
  $menu_links['menu-administration:nolink/3785'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'nolink/3785',
    'router_path' => 'nolink',
    'link_title' => 'Create questions',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '1',
    'expanded' => '1',
    'weight' => '12',
    'parent_path' => 'nolink/3774',
  );
  // Exported menu link: menu-administration:nolink/3795
  $menu_links['menu-administration:nolink/3795'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'nolink/3795',
    'router_path' => 'nolink',
    'link_title' => 'Results',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '1',
    'expanded' => '1',
    'weight' => '13',
    'parent_path' => 'nolink/3774',
  );
  // Exported menu link: menu-administration:nolink/3799
  $menu_links['menu-administration:nolink/3799'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'nolink/3799',
    'router_path' => 'nolink',
    'link_title' => 'Scoring',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '1',
    'expanded' => '1',
    'weight' => '14',
    'parent_path' => 'nolink/3774',
  );
  // Exported menu link: menu-administration:quiz/reports/quiz-per-users
  $menu_links['menu-administration:quiz/reports/quiz-per-users'] = array(
    'menu_name' => 'menu-administration',
    'link_path' => 'quiz/reports/quiz-per-users',
    'router_path' => 'quiz/reports/quiz-per-users',
    'link_title' => 'Quiz results per user',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '8',
    'parent_path' => 'nolink/3795',
  );
  // Exported menu link: navigation:logout
  $menu_links['navigation:logout'] = array(
    'menu_name' => 'navigation',
    'link_path' => 'logout',
    'router_path' => 'logout',
    'link_title' => 'Log out',
    'options' => array(
      'alter' => TRUE,
    ),
    'module' => 'system',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '10',
  );
  // Exported menu link: primary-links:<front>
  $menu_links['primary-links:<front>'] = array(
    'menu_name' => 'primary-links',
    'link_path' => '<front>',
    'router_path' => '',
    'link_title' => 'Početak',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '1',
    'has_children' => '0',
    'expanded' => '1',
    'weight' => '-50',
  );
  // Exported menu link: primary-links:forum/ms-excel-2010
  $menu_links['primary-links:forum/ms-excel-2010'] = array(
    'menu_name' => 'primary-links',
    'link_path' => 'forum/ms-excel-2010',
    'router_path' => 'forum/ms-excel-2010',
    'link_title' => 'Forum',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '0',
  );
  // Exported menu link: primary-links:my-courses
  $menu_links['primary-links:my-courses'] = array(
    'menu_name' => 'primary-links',
    'link_path' => 'my-courses',
    'router_path' => 'my-courses',
    'link_title' => 'Moji tečajevi',
    'options' => array(
      'alter' => TRUE,
    ),
    'module' => 'system',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '-40',
  );
  // Exported menu link: primary-links:node/101
  $menu_links['primary-links:node/101'] = array(
    'menu_name' => 'primary-links',
    'link_path' => 'node/101',
    'router_path' => 'node/%',
    'link_title' => 'Pomoć',
    'options' => array(
      'attributes' => array(
        'title' => 'Pomoć',
      ),
      'alter' => TRUE,
    ),
    'module' => 'menu',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '7',
  );
  // Translatables
  // Included for use with string extractors like potx.
  t('Add location');
  t('Add new user');
  t('Add organization unit');
  t('Add question pool');
  t('All locations');
  t('All question pools');
  t('All questions');
  t('All quizzes');
  t('All users');
  t('Create questions');
  t('Default quiz settings');
  t('Export quiz results');
  t('Forum');
  t('Import questions');
  t('List my pool questions');
  t('List my questions');
  t('Log out');
  t('Moji tečajevi');
  t('New Assignment question');
  t('New Long answer question');
  t('New Matching question');
  t('New Multiple choice question');
  t('New Scale question');
  t('New Short answer question');
  t('New True/False question');
  t('New quiz');
  t('Organization units');
  t('Pomoć');
  t('Pool results per user');
  t('Početak');
  t('Questions settings');
  t('Quiz results per user');
  t('Quiz settings');
  t('Quiz statistics');
  t('Quizzes');
  t('Reimport questions');
  t('Results');
  t('Score long answer questions');
  t('Scoring');
  t('Settings');
  t('Users');


  return $menu_links;
}
