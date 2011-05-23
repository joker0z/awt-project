// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function hideDiv() {
if(document.getElementById("flash_notice").style.display=="none") {
   loadFlash();
   document.getElementById("flash_notice").style.display="block";
   document.getElementById("LEFT").style.display="none";
   document.getElementById("RIGHT").style.display="none";
 }
else {
   document.getElementById("flash_notice").style.display="none";
   document.getElementById("LEFT").style.display="block";
   document.getElementById("RIGHT").style.display="block";
   }
}

function loadFlash() {
    var flashvars = {};
	var params = {};
	var attributes = {};
	swfobject.embedSWF("http://localhost/Cal1.swf", "flash_notice", "900", "780", "9.0.0","expressInstall.swf", flashvars, params, attributes);
}

$(document).ready(function() {
  $('#my-link').click(function(event){
    hideDiv();
    event.preventDefault(); // Prevent link from following its href
  });
});
