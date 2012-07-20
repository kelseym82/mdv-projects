

$(document).ready(function(){




//GEOLOCATION

	jQuery(window).ready(function(){
		jQuery("#geoBtn").click(initiate_geolocation);
	});
	
	function initiate_geolocation(){
		navigator.geolocation.getCurrentPosition(handle_geolocation_query, handle_errors);
	}
	
	function handle_errors(error){
		switch(error.code){
			case error.PERMISSION_DENIED: alert("User did not share geolocation data");
			break;
			
			case error.POSITION_UNAVAILABLE: alert("Could not detect current position");
			break;
			
			case error.TIMEOUT: alert("Retrieving position timed out");
			break;
			
			default: alert("Uknown Error");
			break;
		}
	}
	
	function handle_geolocation_query(position){
		//Test geolocation w/out Map
		//alert('Lat: ' + position.coords.latitude + ' Lon: ' + position.coords.longitude);
      	var image_url = "http://maps.google.com/maps/api/staticmap?sensor=false&center=" + position.coords.latitude + "," +  
                    position.coords.longitude + "&zoom=14&size=300x400&markers=color:blue|label:X|" +  
                    position.coords.latitude + ',' + position.coords.longitude;
      		
		jQuery("#map").remove();
		jQuery("#loc").append(
			jQuery(document.createElement("img")).attr("src", image_url).attr('id', 'map')
		);
	}
	
//NOTIFICATION

	jQuery(window).ready(function(){
		jQuery("#notBtn").click(initiate_notification);
	});
	
	function alertDismissed(){
	
	}
	
	function initiate_notification(){
		document.addEventListener('deviceready', function (e) {
			navigator.notification.alert('PhoneGap Alert', null, 'Title', 'Button')
		}, false);
	}	
	
	
	jQuery(window).ready(function(){
		jQuery("#vibBtn").click(initiate_vibrate);
	});

	function initiate_vibrate(){
        alert("i'm vibrating");
		navigator.notification.vibrate(2000);
	}

	jQuery(window).ready(function(){
		jQuery("#beepBtn").click(initiate_beep);
	});

	function initiate_beep(){
        alert("beep beep I'm a Jeep!");
        navigator.notification.beep(2);
	}


//CAMERA

	jQuery(window).ready(function(){
		jQuery("#camBtn1").click(capturePhoto);
	});

	function capturePhoto(){
        navigator.camera.getPicture(onSuccess, onFail, { quality: 50, allowEdit: true, destinationType: Camera.DestinationType.DATA_URL }); 
		
		function onSuccess(imageData) {
		    var image = document.getElementById('myImage');
            image.style.display = "block";
            image.style.visibility = "visible";
            image.src = "data:image/jpeg;base64," + imageData
        }
		
		function onFail(message) {
		    alert('Failed because: ' + message);
		}

	}

//COMPASS

	jQuery(window).ready(function(){
		jQuery("#compBtn").click(init_compass)
	});
	

	
	function init_compass(){
        //alert('hey you clicked something')
		navigator.compass.getCurrentHeading(onSuccess, onError);
	}
	
	function onSuccess(heading){
		alert('Heading: ' + heading);
	}
	
	function onError(){
		alert('ERROR!');
	}































});
	