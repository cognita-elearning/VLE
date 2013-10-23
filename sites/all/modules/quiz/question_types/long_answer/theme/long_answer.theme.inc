<?php

/**
 * @file
 * Theme functions for long_answer.
 */


/**
 * Theme the list of unscored long answer questions.
 *
 * @param $unscored
 *  An array of objects, each with the question_nid, question_vid, and result_id of an unscored question.
 */
function theme_long_answer_view_unscored($unscored) {
  $output = '';
  $header = array(
	t('Pool'),
    t('Question'),
    t('Finished'),
    t('Action')
  );
  $rows = array();
  
  global $user;
  profile_load_profile($user);
  $user_pool = $user->profile_question_pool;
  
  
  foreach ($unscored as $item) {
    if ($item->time_end > 0) {
	//load question node and get taxonomy pool
	$node_q = node_load($item->question_nid);
	  $names = "";
	  foreach ($node_q->taxonomy as $term) {
		$names[] = $term->name;
	   }
	   
	   //if question is in pool check if user is admin or is marked to that pool in profile
	   if ($names[0] != '')
	   {
		if ($user->uid==1 || $names[0]==$user_pool)
		  $rows[] = array(
			$names[0],
			check_plain($item->title),
			date('Y-m-d H:i', $item->time_end),
			l(t('Score this response'), 'admin/quiz/reports/score-long-answer/' . $item->question_vid . '/' . $item->result_id),
		  );		
	   }
	   else
	   {
	   if ($user->uid==1 || user_access('view any quiz results')) 
		{
		  $rows[] = array(
			$names[0],
			check_plain($item->title),
			date('Y-m-d H:i', $item->time_end),
			l(t('Score this response'), 'admin/quiz/reports/score-long-answer/' . $item->question_vid . '/' . $item->result_id),
		  );
		}
	   }
	   

    }
  }
  $output .= !empty($rows) ? theme('table', $header, $rows) : t('There are no unscored essays.');
  return $output;
}

/**
 * Theme the long_answer response form
 *
 * @param $form
 *  The response form
 */
function theme_long_answer_response_form($form) {
  return drupal_render($form);
}