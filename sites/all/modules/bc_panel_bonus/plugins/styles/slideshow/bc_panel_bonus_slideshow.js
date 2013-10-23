Drupal.behaviors.bc_panel_bonus_slideshow = function (context) {
	for ( s in Drupal.settings.bc_panel_bonus_slideshow )  {
		var settings = Drupal.settings.bc_panel_bonus_slideshow[s];
		var sID = '#' + s ;
		var slideshow = jQuery(sID);
	
		
		if (settings.controller == 1) {
			slideshow.before('<div id="'+s+'-nav" class="slideshow-pager"></div>');
			settings.pager = '#' + s + '-nav';
		} else if (settings.controller == 2) {
			slideshow.after('<div id="'+s+'-nav" class="slideshow-pager"></div>');
			settings.pager = '#' + s + '-nav';
		} else if (settings.controller == 3) {
			slideshow.before('<div id="'+s+'-nav" class="slideshow-pager"><a id="'+s+'-prev" href="#">«</a><a id="'+s+'-next" href="#">»</a></div>');
			settings.prev = '#' + s + '-prev';
			settings.next = '#' + s + '-next';
		} else if (settings.controller == 4) {	
			slideshow.after('<div id="'+s+'-nav" class="slideshow-pager"><a id="'+s+'-prev" href="#">«</a><a id="'+s+'-next" href="#">»</a></div>');
			settings.prev = '#' + s + '-prev';
			settings.next = '#' + s + '-next';
		}
		slideshow.cycle(settings);
		jQuery(".slideshow-pager a:first").addClass("first");
		jQuery(".slideshow-pager a:last").addClass("last");
	}   
}
