/*
All code of the SCORM Module is Copyright 2009 by Servit Open Source Solutions (www.servit.ch)

Except re-used code from the following sources:
Moodle SCORM Module (http://cvs.moodle.org/moodle/mod/scorm/), GPL
SCORM Module for Drupal (http://drupal.org/project/scorm), GPL

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.

You should have received a copy of the GNU General Public License
along with this program as the file LICENSE.txt; if not, please see
http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
*/

//SETTING UP OUR POPUP  
//0 means disabled; 1 means enabled;  
var popupStatus = 0;  

//loading popup with jQuery magic!
function loadPopup(){
//loads popup only if it is disabled
	
	$("#testcont").load(Drupal.settings.mymodule.url+"popupresult?id="+Drupal.settings.mymodule.scormid);
if(popupStatus==0){
$("#backgroundPopup").css({
"opacity": "0.7"
});
$("#backgroundPopup").fadeIn("slow");
$("#popupContact").fadeIn("slow");
popupStatus = 1;
}
}

//disabling popup with jQuery magic!
function disablePopup(){
//disables popup only if it is enabled
if(popupStatus==1){
$("#backgroundPopup").fadeOut("slow");
$("#popupContact").fadeOut("slow");
popupStatus = 0;
}
}

//disbaling the popup using disablePopup, then reloading the scorm iFrame
function repeatExercise(){
  disablePopup();
  var t=document.getElementById('scoframe1');
  t.src=t.src;
  //document.getElementById('scoframe1').contentDocument.location.reload(true);
  //$('#scoframe1').reload();
}

function loadPopup(scormid){
	//loads popup only if it is disabled
	var url=Drupal.settings.mymodule.url[0];
	//$("#testcont").load(Drupal.settings.mymodule.url+"popupresult?id="+scormid);
	var lang='';
	lang=location.pathname.substring(1,location.pathname.indexOf('/',1)+1);
	if(lang.length!=3) { lang=''; }
	var req_address=location.protocol +"//"+ location.host + Drupal.settings.mymodule.url[0]+lang+"popupresult?id="+scormid;
	$("#testcont").load(req_address);
	
	if(popupStatus==0){
	$("#backgroundPopup").css({
	"opacity": "0.7"
	});
	$("#backgroundPopup").fadeIn("slow");
	$("#popupContact").fadeIn("slow");
	popupStatus = 1;
	}
	}

	//disabling popup with jQuery magic!
	function disablePopup(){
	//disables popup only if it is enabled
	if(popupStatus==1){
	$("#backgroundPopup").fadeOut("slow");
	$("#popupContact").fadeOut("slow");
	popupStatus = 0;
	}
	}

//centering popup
function centerPopup(){
//request data for centering
var windowWidth = document.documentElement.clientWidth;
var windowHeight = document.documentElement.clientHeight;
//centering
$("#popupContact").css({
"position": "fixed",
"top": windowHeight/2-200,
"left": windowWidth/2-200,
"z-index":6
});
//only need force for IE6

$("#backgroundPopup").css({
"height": windowHeight,
"z-index":5
});
}

function popup_api(){
	centerPopup();
	//load popup
	loadPopup();
	
	//CLOSING POPUP
	//Click the x event!
	$("#popupContactClose").click(function(){
	disablePopup();
	});
	//Click out event!
	$("#backgroundPopup").click(function(){
	disablePopup();
	});
	//Press Escape event!
	$(document).keypress(function(e){
	if(e.keyCode==27 && popupStatus==1){
	disablePopup();
	}
	});
	
}

function popup_api(scormid){
	centerPopup();
	//load popup
	loadPopup(scormid);
	
	//CLOSING POPUP
	//Click the x event!
	$("#popupContactClose").click(function(){
	disablePopup();
	});
	//Click out event!
	$("#backgroundPopup").click(function(){
	disablePopup();
	});
	//Press Escape event!
	$(document).keypress(function(e){
	if(e.keyCode==27 && popupStatus==1){
	disablePopup();
	}
	});
	
}

$(document).ready(function(){
	//following code will be here
	//LOADING POPUP
	//Click the button event!
	$(".2exitevent").click(function(){
	//centering with css
	centerPopup();
	//load popup
	loadPopup();
	});

	//CLOSING POPUP
	//Click the x event!
	$("#popupContactClose").click(function(){
	disablePopup();
	});
	//Click out event!
	$("#backgroundPopup").click(function(){
	disablePopup();
	});
	//Press Escape event!
	$(document).keypress(function(e){
	if(e.keyCode==27 && popupStatus==1){
	disablePopup();
	}
	});

	});

