<?php

$plugin = array(
   'title' => t('Slideshow Integration'),
   'description' => t('Provide panes in this region as slideshow'),
   'render region' => 'bc_panel_bonus_slideshow_style_render_pane',
   'settings form' => 'bc_panel_bonus_slideshow_settings',
);

function bc_panel_bonus_slideshow_settings( $style_settings ) {	

	if ( empty($style_settings['style_display']['speed']) ) {
		$style_settings['style_display']['speed'] = '700';
	}
	if ( empty($style_settings['style_display']['timeout']) ) {
		$style_settings['style_display']['timeout'] = '5000';
	}
	if ( empty($style_settings['style_display']['items_per_slide']) ) {
		$style_settings['style_display']['items_per_slide'] = '1';
	}
	if ( empty($style_settings['style_display']['pause']) ) {
		$style_settings['style_display']['pause'] = '1';
	}
	if ( !is_numeric($style_settings['style_display']['random']) ) {
		$style_settings['style_display']['random'] = '0';
	}
	if ( !is_numeric($style_settings['style_display']['controller']) ) {
		$style_settings['style_display']['controller'] = '0';
	}
	
	
	$form['style_display']['speed'] = array(
	  '#type' => 'textfield',
	  '#title' => t('Speed'),
	  '#default_value' => $style_settings['style_display']['speed'],
	  '#description' => t('Time in milliseconds that each transition lasts. Numeric only!'),  
	);
	
	 $form['style_display']['timeout'] = array(
	    '#type' => 'textfield',
	    '#title' => t('Timer delay'),
	    '#default_value' => $style_settings['style_display']['timeout'],
	    '#description' => t('Amount of time in milliseconds between transitions. Set the value to 0 to not rotate the slideshow automatically.')
	  );
	  
	    $form['style_display']['items_per_slide'] = array(
	    '#type' => 'textfield',
	    '#title' => t('Items per slide'),
	    '#default_value' => $style_settings['style_display']['items_per_slide'],
	    '#description' => t('The number of items per slide'),
	    '#size' => 4,
	  );
	
	$form['style_display']['fx'] = array(
	  '#default_value' => $style_settings['style_display']['fx'],
	  '#type' => 'select',
	  '#title' => t('Effect'),
	  '#options' => array(
	    'none' => 'none',
	    'blindX' => 'blindX',
	    'blindY' => 'blindY',
	    'blindZ' => 'blindZ',
	    'cover' => 'cover',
	    'curtainX' => 'curtainX',
	    'curtainY' => 'curtainY',
	    'fade' => 'fade',
	    'fadeZoom' => 'fadeZoom',
	    'growX' => 'growX',
	    'growY' => 'growY',
	    'scrollUp' => 'scrollUp',
	    'scrollDown' => 'scrollDown',
	    'scrollLeft' => 'scrollLeft',
	    'scrollRight' => 'scrollRight',
	    'scrollHorz' => 'scrollHorz',
	    'scrollVert' => 'scrollVert',
	    'shuffle' => 'shuffle',
	    'slideX' => 'slideX',
	    'slideY' => 'slideY',
	    'toss' => 'toss',
	    'turnUp' => 'turnUp',
	    'turnDown' => 'turnDown',
	    'turnLeft' => 'turnLeft',
	    'turnRight' => 'turnRight',
	    'uncover' => 'uncover',
	    'wipe' => 'wipe',
	    'zoom' => 'zoom' 
	  ),
	);
	
	 $form['style_display']['pause'] = array(
	    '#type' => 'radios',
	    '#title' => t('Pause'),
	    '#options' => array(1 => t('Yes'),0 => t('No')),
	    '#default_value' => $style_settings['style_display']['pause'],
	    '#description' => t('Pause when hovering on the slideshow image.'),
	  );
	  
	 $form['style_display']['random'] = array(
	    '#type' => 'radios',
	    '#title' => t('Random'),
	    '#description' => t('This option controls the order items are displayed. The default setting, False, uses the views ordering. True will cause the images to display in a random order.'),
	    '#options' => array(0 => t('False'), 1 => t('True')),
	    '#default_value' => $style_settings['style_display']['random'],
	  );
	  
	   $form['style_display']['controller'] = array(
	    '#type' => 'select',
	    '#title' => t('Controller'),
	    '#options' => array(
	    0 => t('None'),
	    1 => t('Pager top'),
	    2 => t('Pager bottom'),
	    3 => t('Arrows top'),
	    4 => t('Arrows bottom')),
	    '#default_value' => $style_settings['style_display']['controller'],
	    '#description' => t('Display a previous and next arrow or numbers for paging.'),
	  );
	
	return $form;
}


function theme_bc_panel_bonus_slideshow_style_render_pane($display, $region_id, $panes, $settings) {
	static $slideshowID;
	$slideshowID++ ;
	
    $settings['style_display']['random'] = (int)  $settings['style_display']['random'] ;
	$settings['style_display']['speed'] = (int) $settings['style_display']['speed'];
	
	$sid = 'panel-slideshow-'.$slideshowID   ;
	$output = '<div id="'.$sid.'" class="panels-slideshow">';
	$counter = 0 ;
	foreach ( $panes as $pane )
	{
		$counter++ ;
		if ( $counter == 1 )  $output .= '<div class="panels-slideshow-item">' . $pane ;
		else {
			$output .=  $pane ;
		}
		if ( $counter == $settings['style_display']['items_per_slide'] )  {
			$output .=  '</div>';
			$counter = 0 ;
		} 
    }
    if ( $counter > 0 && $counter < $settings['style_display']['items_per_slide'] ) $output .= '</div>';
    $output .= '</div>' ;
    
	drupal_add_css(drupal_get_path('module', 'bc_panel_bonus') . '/plugins/styles/slideshow/bc_panel_bonus_slideshow.css');
	drupal_add_js(array('bc_panel_bonus_slideshow' => array($sid  => $settings['style_display'])), 'setting');
	drupal_add_js(drupal_get_path('module', 'bc_panel_bonus') . '/plugins/styles/slideshow/jquery.cycle.all.min.js');
	drupal_add_js(drupal_get_path('module', 'bc_panel_bonus') . '/plugins/styles/slideshow/bc_panel_bonus_slideshow.js');
	return $output;
}
