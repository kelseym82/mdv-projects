



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
                    position.coords.longitude + "&zoom=14&size=300x400&markers=color:blue|label:S|" +  
                    position.coords.latitude + ',' + position.coords.longitude;
      		
		jQuery("#map").remove();
		jQuery(document.body).append(
			jQuery(document.createElement("img")).attr("src", image_url).attr('id', 'map')
		);
	}
	
//NOTIFICATION

	jQuery(window).ready(function(){
		jQuery("#notBtn").click(initiate_notification);
	});	
	
	function initiate_notification(){
		navigator.notification.beep(1);
		navigator.notification.alert("Notification Successful");
	}
	
});	