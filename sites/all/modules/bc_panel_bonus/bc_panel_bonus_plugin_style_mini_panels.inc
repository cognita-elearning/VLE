<?php

class bc_panel_bonus_plugin_style_mini_panels extends views_plugin_row {  
  function render($row) {
  	$node = node_load($row->nid) ;
  	
  	
  	/** Search for position in row. If someone knows a better way ;- ) **/
  	foreach ( $this->view->result as $key => $value ) {
  		if ( $value->nid == $row->nid ) {
  			$position = $key ;
  			break ;
  		} 
  	}

  	$perPage = $this->options['settings_per_page'] ;
  	
  	if ( $this->view->pager['current_page'] > 0 && $perPage != 1 ) {
  		 $display = "0" ; 
  	} else $display = $this->options['row']['row_'.($position + 1)];
  	
  	
	
  	if ( $display != "0" ) {
  		if ( isset($node->panel_build_mode_info)  ) {
  			$node->panel_build_mode_info['panel'] = $display;
  			$node->panel_build_mode_info['processed'] = false;		
  		} 
  		$node->build_mode = BC_PANELS_BUILD_MODE_PREFIX . $display ;
  	}

  	if ( $node->sticky && $this->options['sticky'] != "0" ) {
  		if ( isset($node->panel_build_mode_info)  ) {
  			$node->panel_build_mode_info['panel'] = $this->options['sticky'];
  			$node->panel_build_mode_info['processed'] = false;
  		} 
  		$node->build_mode = BC_PANELS_BUILD_MODE_PREFIX . $this->options['sticky'] ;
  	}

    $output['content'] = node_view($node,true,false) ;
    $output['position'] = $position ;
    $output['view'] = $this->view ;
    $output['css'] = 'views-view views-row-' . $position ;
    if ( $position == 0 ) $output['css'] .= ' views-row-first' ;
    elseif ( $position == $this->view->pager['items_per_page'] ) $output['css'] .= ' views-row-last' ;

    return theme($this->theme_functions(), $this->view, $this->options, $output, $this->field_alias);
  }

  function options_form(&$form, &$form_state) {
  	parent::options_form($form, $form_state);
  	
  	$minis = bc_panel_bonus_get_mini_panels();
  	array_unshift($minis ,  t('Default system settings') );
  	
  	$savedOptions = $this->options ; 
  	
  	$form['settings_per_page'] = array(
  		'#type' => 'checkbox',
  		'#title' => t('Row settings per page'),
  		'#description' => t('If activated, specified layout settings apply on every page. When not only on the first page'),
  		'#default_value' => $savedOptions['settings_per_page']
  	);
  	
	  	
  	$form['row'] = array(
  		'#tree' => true,
  		'#type' => 'fieldset',
  		'#title' => t('Row settings'),
  		'#collapsible' => true,
  		'#collapsed' => true,
  		'#description' => t('Apply a mini template for every row')
  	);

  	for ( $i = 1 ; $i <= $this->view->pager['items_per_page'] ; $i++ ) {
  		$form['row']['row_'.$i] = array(
  			'#type' => 'select' ,
  			'#title' => t('Row !i', array('!i' => $i )),
  			'#options' => $minis ,
  			'#default_value' => $savedOptions['row']['row_' . $i] ,
  			'#tree' => true
  		);
  	}
  	$form['sticky'] = array(
  		'#type' => 'select',
  		'#options' => $minis ,
  		'#title' => t('Override for sticky nodes.'),
  		'#default_value' => $savedOptions['sticky'],
  		'#description' => t('If set to default, this options respect row settings. Otherwise sticky nodes template override row settings.')
  	);
  }
  
}