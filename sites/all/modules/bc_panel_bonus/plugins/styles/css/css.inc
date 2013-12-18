<?php

$plugin = array(
   'title' => t('CSS Integration'),
   'description' => t('Provide panes in this region as quicktabs'),
   'render region' => 'bc_panel_bonus_css_region',
   'render pane' => 'bc_panel_bonus_css_render',
   'settings form' => 'bc_panel_bonus_css_settings',
);
    

function theme_bc_panel_bonus_css_render($display, $region_id, $panes, $settings) {
}

function bc_panel_bonus_css_settings( $settings ) {
	
}