<?php

/**
 * Implementation of hook_user_default_permissions().
 */
function cognita_elearner_vle_user_default_permissions() {
  $permissions = array();

  // Exported permission: Create sequences
  $permissions['Create sequences'] = array(
    'name' => 'Create sequences',
    'roles' => array(),
  );

  // Exported permission: Edit global presets
  $permissions['Edit global presets'] = array(
    'name' => 'Edit global presets',
    'roles' => array(),
  );

  // Exported permission: Use PHP input for field settings (dangerous - grant with care)
  $permissions['Use PHP input for field settings (dangerous - grant with care)'] = array(
    'name' => 'Use PHP input for field settings (dangerous - grant with care)',
    'roles' => array(),
  );

  // Exported permission: access administration menu
  $permissions['access administration menu'] = array(
    'name' => 'access administration menu',
    'roles' => array(),
  );

  // Exported permission: access administration pages
  $permissions['access administration pages'] = array(
    'name' => 'access administration pages',
    'roles' => array(),
  );

  // Exported permission: access ajax quiz
  $permissions['access ajax quiz'] = array(
    'name' => 'access ajax quiz',
    'roles' => array(),
  );

  // Exported permission: access all views
  $permissions['access all views'] = array(
    'name' => 'access all views',
    'roles' => array(),
  );

  // Exported permission: access all webform results
  $permissions['access all webform results'] = array(
    'name' => 'access all webform results',
    'roles' => array(),
  );

  // Exported permission: access author stats
  $permissions['access author stats'] = array(
    'name' => 'access author stats',
    'roles' => array(),
  );

  // Exported permission: access ckeditor
  $permissions['access ckeditor'] = array(
    'name' => 'access ckeditor',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'instructional designer',
      '2' => 'instructor',
      '3' => 'teaching assistent',
      '4' => 'technical support',
    ),
  );

  // Exported permission: access ckeditor link
  $permissions['access ckeditor link'] = array(
    'name' => 'access ckeditor link',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'instructional designer',
      '2' => 'instructor',
    ),
  );

  // Exported permission: access comments
  $permissions['access comments'] = array(
    'name' => 'access comments',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: access content
  $permissions['access content'] = array(
    'name' => 'access content',
    'roles' => array(
      '0' => 'anonymous user',
      '1' => 'authenticated user',
      '2' => 'instructor',
    ),
  );

  // Exported permission: access own webform results
  $permissions['access own webform results'] = array(
    'name' => 'access own webform results',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: access own webform submissions
  $permissions['access own webform submissions'] = array(
    'name' => 'access own webform submissions',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: access printer-friendly version
  $permissions['access printer-friendly version'] = array(
    'name' => 'access printer-friendly version',
    'roles' => array(),
  );

  // Exported permission: access quiz
  $permissions['access quiz'] = array(
    'name' => 'access quiz',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: access site reports
  $permissions['access site reports'] = array(
    'name' => 'access site reports',
    'roles' => array(),
  );

  // Exported permission: access site-wide contact form
  $permissions['access site-wide contact form'] = array(
    'name' => 'access site-wide contact form',
    'roles' => array(),
  );

  // Exported permission: access statistics
  $permissions['access statistics'] = array(
    'name' => 'access statistics',
    'roles' => array(),
  );

  // Exported permission: access system charts
  $permissions['access system charts'] = array(
    'name' => 'access system charts',
    'roles' => array(),
  );

  // Exported permission: access user profiles
  $permissions['access user profiles'] = array(
    'name' => 'access user profiles',
    'roles' => array(),
  );

  // Exported permission: access user stats
  $permissions['access user stats'] = array(
    'name' => 'access user stats',
    'roles' => array(),
  );

  // Exported permission: add content to books
  $permissions['add content to books'] = array(
    'name' => 'add content to books',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: administer actions
  $permissions['administer actions'] = array(
    'name' => 'administer actions',
    'roles' => array(),
  );

  // Exported permission: administer advanced pane settings
  $permissions['administer advanced pane settings'] = array(
    'name' => 'administer advanced pane settings',
    'roles' => array(),
  );

  // Exported permission: administer blocks
  $permissions['administer blocks'] = array(
    'name' => 'administer blocks',
    'roles' => array(),
  );

  // Exported permission: administer book outlines
  $permissions['administer book outlines'] = array(
    'name' => 'administer book outlines',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: administer chart
  $permissions['administer chart'] = array(
    'name' => 'administer chart',
    'roles' => array(),
  );

  // Exported permission: administer ckeditor
  $permissions['administer ckeditor'] = array(
    'name' => 'administer ckeditor',
    'roles' => array(),
  );

  // Exported permission: administer ckeditor link
  $permissions['administer ckeditor link'] = array(
    'name' => 'administer ckeditor link',
    'roles' => array(),
  );

  // Exported permission: administer comments
  $permissions['administer comments'] = array(
    'name' => 'administer comments',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: administer content types
  $permissions['administer content types'] = array(
    'name' => 'administer content types',
    'roles' => array(),
  );

  // Exported permission: administer conversion
  $permissions['administer conversion'] = array(
    'name' => 'administer conversion',
    'roles' => array(),
  );

  // Exported permission: administer date tools
  $permissions['administer date tools'] = array(
    'name' => 'administer date tools',
    'roles' => array(),
  );

  // Exported permission: administer features
  $permissions['administer features'] = array(
    'name' => 'administer features',
    'roles' => array(),
  );

  // Exported permission: administer files
  $permissions['administer files'] = array(
    'name' => 'administer files',
    'roles' => array(),
  );

  // Exported permission: administer filters
  $permissions['administer filters'] = array(
    'name' => 'administer filters',
    'roles' => array(),
  );

  // Exported permission: administer flash
  $permissions['administer flash'] = array(
    'name' => 'administer flash',
    'roles' => array(),
  );

  // Exported permission: administer groups hierarchy
  $permissions['administer groups hierarchy'] = array(
    'name' => 'administer groups hierarchy',
    'roles' => array(),
  );

  // Exported permission: administer imageapi
  $permissions['administer imageapi'] = array(
    'name' => 'administer imageapi',
    'roles' => array(),
  );

  // Exported permission: administer imagecache
  $permissions['administer imagecache'] = array(
    'name' => 'administer imagecache',
    'roles' => array(),
  );

  // Exported permission: administer imce(execute PHP)
  $permissions['administer imce(execute PHP)'] = array(
    'name' => 'administer imce(execute PHP)',
    'roles' => array(),
  );

  // Exported permission: administer imports
  $permissions['administer imports'] = array(
    'name' => 'administer imports',
    'roles' => array(),
  );

  // Exported permission: administer languages
  $permissions['administer languages'] = array(
    'name' => 'administer languages',
    'roles' => array(),
  );

  // Exported permission: administer lightbox2
  $permissions['administer lightbox2'] = array(
    'name' => 'administer lightbox2',
    'roles' => array(),
  );

  // Exported permission: administer menu
  $permissions['administer menu'] = array(
    'name' => 'administer menu',
    'roles' => array(),
  );

  // Exported permission: administer menu_per_role
  $permissions['administer menu_per_role'] = array(
    'name' => 'administer menu_per_role',
    'roles' => array(),
  );

  // Exported permission: administer mini panels
  $permissions['administer mini panels'] = array(
    'name' => 'administer mini panels',
    'roles' => array(),
  );

  // Exported permission: administer ministyle
  $permissions['administer ministyle'] = array(
    'name' => 'administer ministyle',
    'roles' => array(),
  );

  // Exported permission: administer newsletters
  $permissions['administer newsletters'] = array(
    'name' => 'administer newsletters',
    'roles' => array(),
  );

  // Exported permission: administer nodes
  $permissions['administer nodes'] = array(
    'name' => 'administer nodes',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: administer organic groups
  $permissions['administer organic groups'] = array(
    'name' => 'administer organic groups',
    'roles' => array(),
  );

  // Exported permission: administer page manager
  $permissions['administer page manager'] = array(
    'name' => 'administer page manager',
    'roles' => array(),
  );

  // Exported permission: administer pane access
  $permissions['administer pane access'] = array(
    'name' => 'administer pane access',
    'roles' => array(),
  );

  // Exported permission: administer pane visibility
  $permissions['administer pane visibility'] = array(
    'name' => 'administer pane visibility',
    'roles' => array(),
  );

  // Exported permission: administer panels layouts
  $permissions['administer panels layouts'] = array(
    'name' => 'administer panels layouts',
    'roles' => array(),
  );

  // Exported permission: administer pathauto
  $permissions['administer pathauto'] = array(
    'name' => 'administer pathauto',
    'roles' => array(),
  );

  // Exported permission: administer permissions
  $permissions['administer permissions'] = array(
    'name' => 'administer permissions',
    'roles' => array(),
  );

  // Exported permission: administer quiz configuration
  $permissions['administer quiz configuration'] = array(
    'name' => 'administer quiz configuration',
    'roles' => array(),
  );

  // Exported permission: administer rules
  $permissions['administer rules'] = array(
    'name' => 'administer rules',
    'roles' => array(),
  );

  // Exported permission: administer search
  $permissions['administer search'] = array(
    'name' => 'administer search',
    'roles' => array(),
  );

  // Exported permission: administer simplenews settings
  $permissions['administer simplenews settings'] = array(
    'name' => 'administer simplenews settings',
    'roles' => array(),
  );

  // Exported permission: administer simplenews subscriptions
  $permissions['administer simplenews subscriptions'] = array(
    'name' => 'administer simplenews subscriptions',
    'roles' => array(),
  );

  // Exported permission: administer site configuration
  $permissions['administer site configuration'] = array(
    'name' => 'administer site configuration',
    'roles' => array(),
  );

  // Exported permission: administer site-wide contact form
  $permissions['administer site-wide contact form'] = array(
    'name' => 'administer site-wide contact form',
    'roles' => array(),
  );

  // Exported permission: administer stylizer
  $permissions['administer stylizer'] = array(
    'name' => 'administer stylizer',
    'roles' => array(),
  );

  // Exported permission: administer system charts
  $permissions['administer system charts'] = array(
    'name' => 'administer system charts',
    'roles' => array(),
  );

  // Exported permission: administer taxonomy
  $permissions['administer taxonomy'] = array(
    'name' => 'administer taxonomy',
    'roles' => array(),
  );

  // Exported permission: administer url aliases
  $permissions['administer url aliases'] = array(
    'name' => 'administer url aliases',
    'roles' => array(),
  );

  // Exported permission: administer users
  $permissions['administer users'] = array(
    'name' => 'administer users',
    'roles' => array(),
  );

  // Exported permission: administer views
  $permissions['administer views'] = array(
    'name' => 'administer views',
    'roles' => array(),
  );

  // Exported permission: administer views calc
  $permissions['administer views calc'] = array(
    'name' => 'administer views calc',
    'roles' => array(),
  );

  // Exported permission: administer views_send
  $permissions['administer views_send'] = array(
    'name' => 'administer views_send',
    'roles' => array(),
  );

  // Exported permission: assign any action to quiz events
  $permissions['assign any action to quiz events'] = array(
    'name' => 'assign any action to quiz events',
    'roles' => array(),
  );

  // Exported permission: bypass conversion video
  $permissions['bypass conversion video'] = array(
    'name' => 'bypass conversion video',
    'roles' => array(),
  );

  // Exported permission: can_view_question_direct
  $permissions['can_view_question_direct'] = array(
    'name' => 'can_view_question_direct',
    'roles' => array(),
  );

  // Exported permission: cancel own vote
  $permissions['cancel own vote'] = array(
    'name' => 'cancel own vote',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: change own username
  $permissions['change own username'] = array(
    'name' => 'change own username',
    'roles' => array(),
  );

  // Exported permission: clone node
  $permissions['clone node'] = array(
    'name' => 'clone node',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: clone own nodes
  $permissions['clone own nodes'] = array(
    'name' => 'clone own nodes',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: configure member roles
  $permissions['configure member roles'] = array(
    'name' => 'configure member roles',
    'roles' => array(),
  );

  // Exported permission: convert from book
  $permissions['convert from book'] = array(
    'name' => 'convert from book',
    'roles' => array(),
  );

  // Exported permission: convert from book_assignment
  $permissions['convert from book_assignment'] = array(
    'name' => 'convert from book_assignment',
    'roles' => array(),
  );

  // Exported permission: convert from comment
  $permissions['convert from comment'] = array(
    'name' => 'convert from comment',
    'roles' => array(),
  );

  // Exported permission: convert from course
  $permissions['convert from course'] = array(
    'name' => 'convert from course',
    'roles' => array(),
  );

  // Exported permission: convert from long_answer
  $permissions['convert from long_answer'] = array(
    'name' => 'convert from long_answer',
    'roles' => array(),
  );

  // Exported permission: convert from matching
  $permissions['convert from matching'] = array(
    'name' => 'convert from matching',
    'roles' => array(),
  );

  // Exported permission: convert from multichoice
  $permissions['convert from multichoice'] = array(
    'name' => 'convert from multichoice',
    'roles' => array(),
  );

  // Exported permission: convert from page
  $permissions['convert from page'] = array(
    'name' => 'convert from page',
    'roles' => array(),
  );

  // Exported permission: convert from poll
  $permissions['convert from poll'] = array(
    'name' => 'convert from poll',
    'roles' => array(),
  );

  // Exported permission: convert from quiz
  $permissions['convert from quiz'] = array(
    'name' => 'convert from quiz',
    'roles' => array(),
  );

  // Exported permission: convert from quiz_assignment
  $permissions['convert from quiz_assignment'] = array(
    'name' => 'convert from quiz_assignment',
    'roles' => array(),
  );

  // Exported permission: convert from quiz_directions
  $permissions['convert from quiz_directions'] = array(
    'name' => 'convert from quiz_directions',
    'roles' => array(),
  );

  // Exported permission: convert from scale
  $permissions['convert from scale'] = array(
    'name' => 'convert from scale',
    'roles' => array(),
  );

  // Exported permission: convert from short_answer
  $permissions['convert from short_answer'] = array(
    'name' => 'convert from short_answer',
    'roles' => array(),
  );

  // Exported permission: convert from simplenews
  $permissions['convert from simplenews'] = array(
    'name' => 'convert from simplenews',
    'roles' => array(),
  );

  // Exported permission: convert from story
  $permissions['convert from story'] = array(
    'name' => 'convert from story',
    'roles' => array(),
  );

  // Exported permission: convert from truefalse
  $permissions['convert from truefalse'] = array(
    'name' => 'convert from truefalse',
    'roles' => array(),
  );

  // Exported permission: convert from webform
  $permissions['convert from webform'] = array(
    'name' => 'convert from webform',
    'roles' => array(),
  );

  // Exported permission: convert on submission
  $permissions['convert on submission'] = array(
    'name' => 'convert on submission',
    'roles' => array(),
  );

  // Exported permission: convert to book
  $permissions['convert to book'] = array(
    'name' => 'convert to book',
    'roles' => array(),
  );

  // Exported permission: convert to book_assignment
  $permissions['convert to book_assignment'] = array(
    'name' => 'convert to book_assignment',
    'roles' => array(),
  );

  // Exported permission: convert to comment
  $permissions['convert to comment'] = array(
    'name' => 'convert to comment',
    'roles' => array(),
  );

  // Exported permission: convert to course
  $permissions['convert to course'] = array(
    'name' => 'convert to course',
    'roles' => array(),
  );

  // Exported permission: convert to long_answer
  $permissions['convert to long_answer'] = array(
    'name' => 'convert to long_answer',
    'roles' => array(),
  );

  // Exported permission: convert to matching
  $permissions['convert to matching'] = array(
    'name' => 'convert to matching',
    'roles' => array(),
  );

  // Exported permission: convert to multichoice
  $permissions['convert to multichoice'] = array(
    'name' => 'convert to multichoice',
    'roles' => array(),
  );

  // Exported permission: convert to page
  $permissions['convert to page'] = array(
    'name' => 'convert to page',
    'roles' => array(),
  );

  // Exported permission: convert to poll
  $permissions['convert to poll'] = array(
    'name' => 'convert to poll',
    'roles' => array(),
  );

  // Exported permission: convert to quiz
  $permissions['convert to quiz'] = array(
    'name' => 'convert to quiz',
    'roles' => array(),
  );

  // Exported permission: convert to quiz_assignment
  $permissions['convert to quiz_assignment'] = array(
    'name' => 'convert to quiz_assignment',
    'roles' => array(),
  );

  // Exported permission: convert to quiz_directions
  $permissions['convert to quiz_directions'] = array(
    'name' => 'convert to quiz_directions',
    'roles' => array(),
  );

  // Exported permission: convert to scale
  $permissions['convert to scale'] = array(
    'name' => 'convert to scale',
    'roles' => array(),
  );

  // Exported permission: convert to short_answer
  $permissions['convert to short_answer'] = array(
    'name' => 'convert to short_answer',
    'roles' => array(),
  );

  // Exported permission: convert to simplenews
  $permissions['convert to simplenews'] = array(
    'name' => 'convert to simplenews',
    'roles' => array(),
  );

  // Exported permission: convert to story
  $permissions['convert to story'] = array(
    'name' => 'convert to story',
    'roles' => array(),
  );

  // Exported permission: convert to truefalse
  $permissions['convert to truefalse'] = array(
    'name' => 'convert to truefalse',
    'roles' => array(),
  );

  // Exported permission: convert to webform
  $permissions['convert to webform'] = array(
    'name' => 'convert to webform',
    'roles' => array(),
  );

  // Exported permission: copy books
  $permissions['copy books'] = array(
    'name' => 'copy books',
    'roles' => array(),
  );

  // Exported permission: create book content
  $permissions['create book content'] = array(
    'name' => 'create book content',
    'roles' => array(),
  );

  // Exported permission: create book_assignment content
  $permissions['create book_assignment content'] = array(
    'name' => 'create book_assignment content',
    'roles' => array(),
  );

  // Exported permission: create comment content
  $permissions['create comment content'] = array(
    'name' => 'create comment content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'authenticated user',
      '2' => 'instructor',
      '3' => 'student',
    ),
  );

  // Exported permission: create course content
  $permissions['create course content'] = array(
    'name' => 'create course content',
    'roles' => array(),
  );

  // Exported permission: create mini panels
  $permissions['create mini panels'] = array(
    'name' => 'create mini panels',
    'roles' => array(),
  );

  // Exported permission: create new books
  $permissions['create new books'] = array(
    'name' => 'create new books',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: create page content
  $permissions['create page content'] = array(
    'name' => 'create page content',
    'roles' => array(),
  );

  // Exported permission: create poll content
  $permissions['create poll content'] = array(
    'name' => 'create poll content',
    'roles' => array(),
  );

  // Exported permission: create quiz
  $permissions['create quiz'] = array(
    'name' => 'create quiz',
    'roles' => array(),
  );

  // Exported permission: create simplenews content
  $permissions['create simplenews content'] = array(
    'name' => 'create simplenews content',
    'roles' => array(),
  );

  // Exported permission: create story content
  $permissions['create story content'] = array(
    'name' => 'create story content',
    'roles' => array(),
  );

  // Exported permission: create url aliases
  $permissions['create url aliases'] = array(
    'name' => 'create url aliases',
    'roles' => array(),
  );

  // Exported permission: create views calc
  $permissions['create views calc'] = array(
    'name' => 'create views calc',
    'roles' => array(),
  );

  // Exported permission: create webform content
  $permissions['create webform content'] = array(
    'name' => 'create webform content',
    'roles' => array(),
  );

  // Exported permission: delete all webform submissions
  $permissions['delete all webform submissions'] = array(
    'name' => 'delete all webform submissions',
    'roles' => array(),
  );

  // Exported permission: delete any book content
  $permissions['delete any book content'] = array(
    'name' => 'delete any book content',
    'roles' => array(),
  );

  // Exported permission: delete any book_assignment content
  $permissions['delete any book_assignment content'] = array(
    'name' => 'delete any book_assignment content',
    'roles' => array(),
  );

  // Exported permission: delete any comment content
  $permissions['delete any comment content'] = array(
    'name' => 'delete any comment content',
    'roles' => array(),
  );

  // Exported permission: delete any course content
  $permissions['delete any course content'] = array(
    'name' => 'delete any course content',
    'roles' => array(),
  );

  // Exported permission: delete any page content
  $permissions['delete any page content'] = array(
    'name' => 'delete any page content',
    'roles' => array(),
  );

  // Exported permission: delete any poll content
  $permissions['delete any poll content'] = array(
    'name' => 'delete any poll content',
    'roles' => array(),
  );

  // Exported permission: delete any quiz
  $permissions['delete any quiz'] = array(
    'name' => 'delete any quiz',
    'roles' => array(),
  );

  // Exported permission: delete any quiz results
  $permissions['delete any quiz results'] = array(
    'name' => 'delete any quiz results',
    'roles' => array(),
  );

  // Exported permission: delete any simplenews content
  $permissions['delete any simplenews content'] = array(
    'name' => 'delete any simplenews content',
    'roles' => array(),
  );

  // Exported permission: delete any story content
  $permissions['delete any story content'] = array(
    'name' => 'delete any story content',
    'roles' => array(),
  );

  // Exported permission: delete any webform content
  $permissions['delete any webform content'] = array(
    'name' => 'delete any webform content',
    'roles' => array(),
  );

  // Exported permission: delete own book content
  $permissions['delete own book content'] = array(
    'name' => 'delete own book content',
    'roles' => array(),
  );

  // Exported permission: delete own book_assignment content
  $permissions['delete own book_assignment content'] = array(
    'name' => 'delete own book_assignment content',
    'roles' => array(),
  );

  // Exported permission: delete own comment content
  $permissions['delete own comment content'] = array(
    'name' => 'delete own comment content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'authenticated user',
      '2' => 'instructor',
      '3' => 'student',
    ),
  );

  // Exported permission: delete own course content
  $permissions['delete own course content'] = array(
    'name' => 'delete own course content',
    'roles' => array(),
  );

  // Exported permission: delete own page content
  $permissions['delete own page content'] = array(
    'name' => 'delete own page content',
    'roles' => array(),
  );

  // Exported permission: delete own poll content
  $permissions['delete own poll content'] = array(
    'name' => 'delete own poll content',
    'roles' => array(),
  );

  // Exported permission: delete own quiz
  $permissions['delete own quiz'] = array(
    'name' => 'delete own quiz',
    'roles' => array(),
  );

  // Exported permission: delete own simplenews content
  $permissions['delete own simplenews content'] = array(
    'name' => 'delete own simplenews content',
    'roles' => array(),
  );

  // Exported permission: delete own story content
  $permissions['delete own story content'] = array(
    'name' => 'delete own story content',
    'roles' => array(),
  );

  // Exported permission: delete own webform content
  $permissions['delete own webform content'] = array(
    'name' => 'delete own webform content',
    'roles' => array(),
  );

  // Exported permission: delete own webform submissions
  $permissions['delete own webform submissions'] = array(
    'name' => 'delete own webform submissions',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: delete results for own quiz
  $permissions['delete results for own quiz'] = array(
    'name' => 'delete results for own quiz',
    'roles' => array(),
  );

  // Exported permission: delete revisions
  $permissions['delete revisions'] = array(
    'name' => 'delete revisions',
    'roles' => array(),
  );

  // Exported permission: display drupal links
  $permissions['display drupal links'] = array(
    'name' => 'display drupal links',
    'roles' => array(),
  );

  // Exported permission: download original image
  $permissions['download original image'] = array(
    'name' => 'download original image',
    'roles' => array(),
  );

  // Exported permission: edit all webform submissions
  $permissions['edit all webform submissions'] = array(
    'name' => 'edit all webform submissions',
    'roles' => array(),
  );

  // Exported permission: edit any book content
  $permissions['edit any book content'] = array(
    'name' => 'edit any book content',
    'roles' => array(),
  );

  // Exported permission: edit any book_assignment content
  $permissions['edit any book_assignment content'] = array(
    'name' => 'edit any book_assignment content',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: edit any comment content
  $permissions['edit any comment content'] = array(
    'name' => 'edit any comment content',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: edit any course content
  $permissions['edit any course content'] = array(
    'name' => 'edit any course content',
    'roles' => array(),
  );

  // Exported permission: edit any page content
  $permissions['edit any page content'] = array(
    'name' => 'edit any page content',
    'roles' => array(),
  );

  // Exported permission: edit any poll content
  $permissions['edit any poll content'] = array(
    'name' => 'edit any poll content',
    'roles' => array(),
  );

  // Exported permission: edit any quiz
  $permissions['edit any quiz'] = array(
    'name' => 'edit any quiz',
    'roles' => array(),
  );

  // Exported permission: edit any simplenews content
  $permissions['edit any simplenews content'] = array(
    'name' => 'edit any simplenews content',
    'roles' => array(),
  );

  // Exported permission: edit any story content
  $permissions['edit any story content'] = array(
    'name' => 'edit any story content',
    'roles' => array(),
  );

  // Exported permission: edit any webform content
  $permissions['edit any webform content'] = array(
    'name' => 'edit any webform content',
    'roles' => array(),
  );

  // Exported permission: edit field_assignment_answer_referer
  $permissions['edit field_assignment_answer_referer'] = array(
    'name' => 'edit field_assignment_answer_referer',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: edit field_assignment_file
  $permissions['edit field_assignment_file'] = array(
    'name' => 'edit field_assignment_file',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: edit field_assignment_reference
  $permissions['edit field_assignment_reference'] = array(
    'name' => 'edit field_assignment_reference',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: edit field_backref_264b8559e2bf14f625
  $permissions['edit field_backref_264b8559e2bf14f625'] = array(
    'name' => 'edit field_backref_264b8559e2bf14f625',
    'roles' => array(),
  );

  // Exported permission: edit field_elearner_idccd
  $permissions['edit field_elearner_idccd'] = array(
    'name' => 'edit field_elearner_idccd',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: edit field_elearner_idscodynamics
  $permissions['edit field_elearner_idscodynamics'] = array(
    'name' => 'edit field_elearner_idscodynamics',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: edit field_lesson_mandatory
  $permissions['edit field_lesson_mandatory'] = array(
    'name' => 'edit field_lesson_mandatory',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: edit field_sco_status
  $permissions['edit field_sco_status'] = array(
    'name' => 'edit field_sco_status',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: edit field_score
  $permissions['edit field_score'] = array(
    'name' => 'edit field_score',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: edit field_score_comment
  $permissions['edit field_score_comment'] = array(
    'name' => 'edit field_score_comment',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: edit field_score_max
  $permissions['edit field_score_max'] = array(
    'name' => 'edit field_score_max',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: edit field_user_upload
  $permissions['edit field_user_upload'] = array(
    'name' => 'edit field_user_upload',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'instructor',
      '2' => 'student',
    ),
  );

  // Exported permission: edit groups hierarchy
  $permissions['edit groups hierarchy'] = array(
    'name' => 'edit groups hierarchy',
    'roles' => array(),
  );

  // Exported permission: edit own book content
  $permissions['edit own book content'] = array(
    'name' => 'edit own book content',
    'roles' => array(),
  );

  // Exported permission: edit own book_assignment content
  $permissions['edit own book_assignment content'] = array(
    'name' => 'edit own book_assignment content',
    'roles' => array(),
  );

  // Exported permission: edit own comment content
  $permissions['edit own comment content'] = array(
    'name' => 'edit own comment content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'authenticated user',
      '2' => 'instructor',
      '3' => 'student',
    ),
  );

  // Exported permission: edit own course content
  $permissions['edit own course content'] = array(
    'name' => 'edit own course content',
    'roles' => array(),
  );

  // Exported permission: edit own page content
  $permissions['edit own page content'] = array(
    'name' => 'edit own page content',
    'roles' => array(),
  );

  // Exported permission: edit own poll content
  $permissions['edit own poll content'] = array(
    'name' => 'edit own poll content',
    'roles' => array(),
  );

  // Exported permission: edit own quiz
  $permissions['edit own quiz'] = array(
    'name' => 'edit own quiz',
    'roles' => array(),
  );

  // Exported permission: edit own simplenews content
  $permissions['edit own simplenews content'] = array(
    'name' => 'edit own simplenews content',
    'roles' => array(),
  );

  // Exported permission: edit own story content
  $permissions['edit own story content'] = array(
    'name' => 'edit own story content',
    'roles' => array(),
  );

  // Exported permission: edit own webform content
  $permissions['edit own webform content'] = array(
    'name' => 'edit own webform content',
    'roles' => array(),
  );

  // Exported permission: edit own webform submissions
  $permissions['edit own webform submissions'] = array(
    'name' => 'edit own webform submissions',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: edit question titles
  $permissions['edit question titles'] = array(
    'name' => 'edit question titles',
    'roles' => array(),
  );

  // Exported permission: export questions
  $permissions['export questions'] = array(
    'name' => 'export questions',
    'roles' => array(),
  );

  // Exported permission: export results
  $permissions['export results'] = array(
    'name' => 'export results',
    'roles' => array(),
  );

  // Exported permission: flush imagecache
  $permissions['flush imagecache'] = array(
    'name' => 'flush imagecache',
    'roles' => array(),
  );

  // Exported permission: import content
  $permissions['import content'] = array(
    'name' => 'import content',
    'roles' => array(),
  );

  // Exported permission: import menu from file
  $permissions['import menu from file'] = array(
    'name' => 'import menu from file',
    'roles' => array(),
  );

  // Exported permission: import questions
  $permissions['import questions'] = array(
    'name' => 'import questions',
    'roles' => array(),
  );

  // Exported permission: import users
  $permissions['import users'] = array(
    'name' => 'import users',
    'roles' => array(),
  );

  // Exported permission: inspect all votes
  $permissions['inspect all votes'] = array(
    'name' => 'inspect all votes',
    'roles' => array(),
  );

  // Exported permission: manage features
  $permissions['manage features'] = array(
    'name' => 'manage features',
    'roles' => array(),
  );

  // Exported permission: manual quiz revisioning
  $permissions['manual quiz revisioning'] = array(
    'name' => 'manual quiz revisioning',
    'roles' => array(),
  );

  // Exported permission: mass mailing with views_send
  $permissions['mass mailing with views_send'] = array(
    'name' => 'mass mailing with views_send',
    'roles' => array(),
  );

  // Exported permission: menu edit features
  $permissions['menu edit features'] = array(
    'name' => 'menu edit features',
    'roles' => array(),
  );

  // Exported permission: menu edit menu-administration
  $permissions['menu edit menu-administration'] = array(
    'name' => 'menu edit menu-administration',
    'roles' => array(),
  );

  // Exported permission: menu edit navigation
  $permissions['menu edit navigation'] = array(
    'name' => 'menu edit navigation',
    'roles' => array(),
  );

  // Exported permission: menu edit primary-links
  $permissions['menu edit primary-links'] = array(
    'name' => 'menu edit primary-links',
    'roles' => array(),
  );

  // Exported permission: menu edit secondary-links
  $permissions['menu edit secondary-links'] = array(
    'name' => 'menu edit secondary-links',
    'roles' => array(),
  );

  // Exported permission: notify of path changes
  $permissions['notify of path changes'] = array(
    'name' => 'notify of path changes',
    'roles' => array(),
  );

  // Exported permission: og user import
  $permissions['og user import'] = array(
    'name' => 'og user import',
    'roles' => array(),
  );

  // Exported permission: outline own pages
  $permissions['outline own pages'] = array(
    'name' => 'outline own pages',
    'roles' => array(),
  );

  // Exported permission: override group default role
  $permissions['override group default role'] = array(
    'name' => 'override group default role',
    'roles' => array(),
  );

  // Exported permission: override player dimensions
  $permissions['override player dimensions'] = array(
    'name' => 'override player dimensions',
    'roles' => array(),
  );

  // Exported permission: overview scheduled newsletters
  $permissions['overview scheduled newsletters'] = array(
    'name' => 'overview scheduled newsletters',
    'roles' => array(),
  );

  // Exported permission: post comments
  $permissions['post comments'] = array(
    'name' => 'post comments',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: post comments without approval
  $permissions['post comments without approval'] = array(
    'name' => 'post comments without approval',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: quiz assignment download file
  $permissions['quiz assignment download file'] = array(
    'name' => 'quiz assignment download file',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: revert revisions
  $permissions['revert revisions'] = array(
    'name' => 'revert revisions',
    'roles' => array(),
  );

  // Exported permission: score any quiz
  $permissions['score any quiz'] = array(
    'name' => 'score any quiz',
    'roles' => array(),
  );

  // Exported permission: score own quiz
  $permissions['score own quiz'] = array(
    'name' => 'score own quiz',
    'roles' => array(),
  );

  // Exported permission: search content
  $permissions['search content'] = array(
    'name' => 'search content',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: see menu_editor placeholder pages
  $permissions['see menu_editor placeholder pages'] = array(
    'name' => 'see menu_editor placeholder pages',
    'roles' => array(),
  );

  // Exported permission: select different theme
  $permissions['select different theme'] = array(
    'name' => 'select different theme',
    'roles' => array(),
  );

  // Exported permission: send newsletter
  $permissions['send newsletter'] = array(
    'name' => 'send newsletter',
    'roles' => array(),
  );

  // Exported permission: send scheduled newsletters
  $permissions['send scheduled newsletters'] = array(
    'name' => 'send scheduled newsletters',
    'roles' => array(),
  );

  // Exported permission: show book reorder tab
  $permissions['show book reorder tab'] = array(
    'name' => 'show book reorder tab',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: show core Outline form element
  $permissions['show core Outline form element'] = array(
    'name' => 'show core Outline form element',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: show core Outline tab
  $permissions['show core Outline tab'] = array(
    'name' => 'show core Outline tab',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: subscribe to newsletters
  $permissions['subscribe to newsletters'] = array(
    'name' => 'subscribe to newsletters',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'authenticated user',
      '2' => 'instructor',
      '3' => 'student',
    ),
  );

  // Exported permission: translate interface
  $permissions['translate interface'] = array(
    'name' => 'translate interface',
    'roles' => array(),
  );

  // Exported permission: upload files
  $permissions['upload files'] = array(
    'name' => 'upload files',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: use PHP for block visibility
  $permissions['use PHP for block visibility'] = array(
    'name' => 'use PHP for block visibility',
    'roles' => array(),
  );

  // Exported permission: use PHP for scheduling newsletters
  $permissions['use PHP for scheduling newsletters'] = array(
    'name' => 'use PHP for scheduling newsletters',
    'roles' => array(),
  );

  // Exported permission: use PHP for title patterns
  $permissions['use PHP for title patterns'] = array(
    'name' => 'use PHP for title patterns',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: use advanced search
  $permissions['use advanced search'] = array(
    'name' => 'use advanced search',
    'roles' => array(),
  );

  // Exported permission: use default thumb
  $permissions['use default thumb'] = array(
    'name' => 'use default thumb',
    'roles' => array(),
  );

  // Exported permission: use page manager
  $permissions['use page manager'] = array(
    'name' => 'use page manager',
    'roles' => array(),
  );

  // Exported permission: use panels caching features
  $permissions['use panels caching features'] = array(
    'name' => 'use panels caching features',
    'roles' => array(),
  );

  // Exported permission: use panels dashboard
  $permissions['use panels dashboard'] = array(
    'name' => 'use panels dashboard',
    'roles' => array(),
  );

  // Exported permission: use panels in place editing
  $permissions['use panels in place editing'] = array(
    'name' => 'use panels in place editing',
    'roles' => array(),
  );

  // Exported permission: use realname
  $permissions['use realname'] = array(
    'name' => 'use realname',
    'roles' => array(),
  );

  // Exported permission: use regex for short answer
  $permissions['use regex for short answer'] = array(
    'name' => 'use regex for short answer',
    'roles' => array(),
  );

  // Exported permission: use taskbar
  $permissions['use taskbar'] = array(
    'name' => 'use taskbar',
    'roles' => array(),
  );

  // Exported permission: use taskbar alert
  $permissions['use taskbar alert'] = array(
    'name' => 'use taskbar alert',
    'roles' => array(),
  );

  // Exported permission: view all panes
  $permissions['view all panes'] = array(
    'name' => 'view all panes',
    'roles' => array(),
  );

  // Exported permission: view any quiz question correct response
  $permissions['view any quiz question correct response'] = array(
    'name' => 'view any quiz question correct response',
    'roles' => array(),
  );

  // Exported permission: view any quiz report
  $permissions['view any quiz report'] = array(
    'name' => 'view any quiz report',
    'roles' => array(),
  );

  // Exported permission: view any quiz results
  $permissions['view any quiz results'] = array(
    'name' => 'view any quiz results',
    'roles' => array(),
  );

  // Exported permission: view book history
  $permissions['view book history'] = array(
    'name' => 'view book history',
    'roles' => array(),
  );

  // Exported permission: view date repeats
  $permissions['view date repeats'] = array(
    'name' => 'view date repeats',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: view field_assignment_answer_referer
  $permissions['view field_assignment_answer_referer'] = array(
    'name' => 'view field_assignment_answer_referer',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: view field_assignment_file
  $permissions['view field_assignment_file'] = array(
    'name' => 'view field_assignment_file',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
      '2' => 'student',
    ),
  );

  // Exported permission: view field_assignment_reference
  $permissions['view field_assignment_reference'] = array(
    'name' => 'view field_assignment_reference',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: view field_backref_264b8559e2bf14f625
  $permissions['view field_backref_264b8559e2bf14f625'] = array(
    'name' => 'view field_backref_264b8559e2bf14f625',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: view field_elearner_idccd
  $permissions['view field_elearner_idccd'] = array(
    'name' => 'view field_elearner_idccd',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: view field_elearner_idscodynamics
  $permissions['view field_elearner_idscodynamics'] = array(
    'name' => 'view field_elearner_idscodynamics',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: view field_lesson_mandatory
  $permissions['view field_lesson_mandatory'] = array(
    'name' => 'view field_lesson_mandatory',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: view field_sco_status
  $permissions['view field_sco_status'] = array(
    'name' => 'view field_sco_status',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: view field_score
  $permissions['view field_score'] = array(
    'name' => 'view field_score',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: view field_score_comment
  $permissions['view field_score_comment'] = array(
    'name' => 'view field_score_comment',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'instructional designer',
      '2' => 'instructor',
      '3' => 'student',
      '4' => 'teaching assistent',
    ),
  );

  // Exported permission: view field_score_max
  $permissions['view field_score_max'] = array(
    'name' => 'view field_score_max',
    'roles' => array(
      '0' => 'instructor',
    ),
  );

  // Exported permission: view field_user_upload
  $permissions['view field_user_upload'] = array(
    'name' => 'view field_user_upload',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'instructor',
      '2' => 'student',
    ),
  );

  // Exported permission: view own quiz report
  $permissions['view own quiz report'] = array(
    'name' => 'view own quiz report',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: view own quiz results
  $permissions['view own quiz results'] = array(
    'name' => 'view own quiz results',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: view pane admin links
  $permissions['view pane admin links'] = array(
    'name' => 'view pane admin links',
    'roles' => array(),
  );

  // Exported permission: view post access counter
  $permissions['view post access counter'] = array(
    'name' => 'view post access counter',
    'roles' => array(),
  );

  // Exported permission: view quiz question outside of a quiz
  $permissions['view quiz question outside of a quiz'] = array(
    'name' => 'view quiz question outside of a quiz',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: view results for own quiz
  $permissions['view results for own quiz'] = array(
    'name' => 'view results for own quiz',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: view revisions
  $permissions['view revisions'] = array(
    'name' => 'view revisions',
    'roles' => array(),
  );

  // Exported permission: view uploaded files
  $permissions['view uploaded files'] = array(
    'name' => 'view uploaded files',
    'roles' => array(
      '0' => 'authenticated user',
      '1' => 'instructor',
    ),
  );

  // Exported permission: vote on polls
  $permissions['vote on polls'] = array(
    'name' => 'vote on polls',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: xls export views
  $permissions['xls export views'] = array(
    'name' => 'xls export views',
    'roles' => array(),
  );

  return $permissions;
}
