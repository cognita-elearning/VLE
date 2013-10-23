<?php

$plugin = array(
   'title' => t('Clean'),
   'description' => t('Clean without extra html'),
   'render region' => 'bc_panel_bonus_clean_render_region',
   'render pane' => 'bc_panel_bonus_clean_render_pane',
   'settings form' => 'bc_panel_bonus_clean_settings',
   'weight' => -100,
);
    

function theme_bc_panel_bonus_clean_render_region($display, $region_id, $panes, $settings) {
	return implode("\n",$panes) ;
}
function theme_bc_panel_bonus_clean_render_pane($content, $pane, $display) {
  if (empty($content->content)) {
    return;
  }
  return $content->content ;
}