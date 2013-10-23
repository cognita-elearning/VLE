<?php

/**
 * Implementation of hook_menu_default_menu_custom().
 */
function cognita_elearner_vle_menu_default_menu_custom() {
  $menus = array();

  // Exported menu: menu-administration
  $menus['menu-administration'] = array(
    'menu_name' => 'menu-administration',
    'title' => 'Administration',
    'description' => '',
  );
  // Exported menu: primary-links
  $menus['primary-links'] = array(
    'menu_name' => 'primary-links',
    'title' => 'Primarni linkovi',
    'description' => 'Primarni linkovi se često koriste u okviru teme za prikazivenje glavnih dijelova sitea. Tipičan primjer primarnih linkova bili bi tabovi na vrhu.',
  );
  // Exported menu: secondary-links
  $menus['secondary-links'] = array(
    'menu_name' => 'secondary-links',
    'title' => 'Sekundarni linkovi',
    'description' => 'Sekundarni linkovi se često koriste za stranice kao što su pravne napomene, kontakt detalji i druge sekundarne navigacijske stavke koje imaju manju ulogu nego primarni linkovi.',
  );
  // Translatables
  // Included for use with string extractors like potx.
  t('Administration');
  t('Primarni linkovi');
  t('Primarni linkovi se često koriste u okviru teme za prikazivenje glavnih dijelova sitea. Tipičan primjer primarnih linkova bili bi tabovi na vrhu.');
  t('Sekundarni linkovi');
  t('Sekundarni linkovi se često koriste za stranice kao što su pravne napomene, kontakt detalji i druge sekundarne navigacijske stavke koje imaju manju ulogu nego primarni linkovi.');


  return $menus;
}
