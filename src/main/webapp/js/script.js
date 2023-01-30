window.onload=imageslider;

function togglepopup(){
  document.getElementById("signUppopup").classList.toggle("active");
}

function togglepopuplogin(){
	document.getElementById("loginpopup").classList.toggle("active");
  }


var i = 0; 			// Start Point
var images = [];	// Images Array
var time = 3000;	// Time Between Switch
	 
// Image List
images[0] = "images/pexels-asad-photo-maldives-3155726 1.jpg";
images[1] = "images/pexels-pavel-danilyuk-9064211 1.jpg";

// Change Image
function imageslider(){
	document.slide.src = images[i];

	// Check If Index Is Under Max
	if(i < images.length - 1){
	  // Add 1 to Index
	  i++; 
	} else { 
		// Reset Back To O
		i = 0;
	}

	// Run function every x seconds
	setTimeout("imageslider()", time);

}