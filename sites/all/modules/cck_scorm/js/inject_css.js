
function scormframecss(ev){
  if(ev != undefined) {
   if(ev.srcElement == undefined)//Not IE
   {
     //alert("FF");
     var srcIFrame=ev.currentTarget;

     if(ev.currentTarget.className=="scoframe")
     {
       var cssLink = document.createElement("link");
       cssLink.href = Drupal.settings.cssLink;
       cssLink.rel = "stylesheet";
       cssLink.type = "text/css";

       ev.currentTarget.contentDocument.body.appendChild(cssLink);

       var jsElem = document.createElement("script");
       jsElem.type = "text/javascript";
       var jsCode = document.createTextNode('if(document.getElementById("Captivate") != null){document.getElementById("Captivate").setAttribute("wmode", "transparent");}');
       //var jsCode = "if(document.getElementById('Captivate') != null){document.getElementById('Captivate').setAttribute('wmode', 'transparent');}";
       jsElem.appendChild(jsCode);


       ev.currentTarget.contentDocument.body.appendChild(jsElem);
     }
   }
   else //IE
   {
     //alert("IE");
     var srcIFrame=ev.srcElement;

     if(ev.srcElement.className=="scoframe")
     {
       var cssLink = ev.srcElement.contentWindow.document.createElement("link");
       cssLink.href = Drupal.settings.cssLink;
       cssLink.rel = "stylesheet";
       cssLink.type = "text/css";

       ev.srcElement.contentWindow.document.body.appendChild(cssLink);

       var jsElem = ev.srcElement.contentWindow.document.createElement("script");
       jsElem.type = "text/javascript";
       //var jsCode = "if(document.getElementById('Captivate') != null){top.setWMode(document.getElementById('Captivate'));}";
       var jsCode = "if(document.getElementById('Captivate') != null){document.getElementById('Captivate').setAttribute('wmode', 'transparent');}";
       jsElem.text=jsCode;

       ev.srcElement.contentWindow.document.body.appendChild(jsElem);
     }
   }
  }
}

function setWMode(obj) {
  if (obj != undefined && obj!=null) {
    //alert($("#Captivate").attr('wmode'));
    //alert(obj.getElementById("Captivate").getAttribute('wmode'));
    //$("#Captivate").removeAttr('wmode');
    //$("#Captivate").attr('wmode', 'transparent');
    obj.setAttribute('wmode', 'transparent');
    //alert(obj.getElementById("Captivate").getAttribute('wmode'));
    //$('#Captivate'+).hide();
    //$('#Captivate'+).show();
  }
  else {
    x=x+1;
    //setTimeout('setWMode(obj,x)', 5000);
  }
}
