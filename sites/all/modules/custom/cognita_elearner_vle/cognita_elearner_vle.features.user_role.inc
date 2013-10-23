<?php

/**
 * Implementation of hook_user_default_roles().
 */
function cognita_elearner_vle_user_default_roles() {
  $roles = array();

  // Exported role: administrator
  $roles['administrator'] = array(
    'name' => 'administrator',
  );

  // Exported role: instructional designer
  $roles['instructional designer'] = array(
    'name' => 'instructional designer',
  );

  // Exported role: instructor
  $roles['instructor'] = array(
    'name' => 'instructor',
  );

  // Exported role: student
  $roles['student'] = array(
    'name' => 'student',
  );

  // Exported role: teaching assistent
  $roles['teaching assistent'] = array(
    'name' => 'teaching assistent',
  );

  // Exported role: technical support
  $roles['technical support'] = array(
    'name' => 'technical support',
  );

  return $roles;
}
