<?php

if ( !module_exists('quicktabs') ) return ;

$plugin = array(
   'title' => t('Quicktabs Integration'),
   'description' => t('Provide panes in this region as quicktabs'),
   'render region' => 'bc_panel_bonus_quicktabs_style_render_pane',
   'settings form' => 'bc_panel_bonus_quicktabs_settings',
);
    

function bc_panel_bonus_quicktabs_settings( $style_settings ) {	
	$form['style_display'] = array(
		'#type' => 'radios',
		'#default_value' => $style_settings['style_display'],
		'#options' => quicktabs_style_options() 
	);
	return $form;
}


function theme_bc_panel_bonus_quicktabs_style_render_pane($display, $region_id, $panes, $settings) {
	if ( count($panes) == 0 ) return '';
	static $quicktabsID;
	$quicktabsID++ ;
	
	$quicktabs = array();

	if ( $settings['style_display'] != 'default' ) $quicktabs['style'] = $settings['style_display'];
	$quicktabs['qtid'] = 'panel-quicktabs-'.$quicktabsID   ;
	
 	foreach ( $panes as $paneID => $pane ) {
 		$content = $display->content[$paneID] ;
 		$quicktabs['tabs'][] = array ( 
 			'type' => 'freetext' , 
 			'text' =>  $pane ,
 			'title' => $content->content_title , 
 		);
 	}
  	return theme('quicktabs',$quicktabs);
}