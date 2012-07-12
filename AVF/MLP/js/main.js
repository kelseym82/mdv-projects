



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
		alert('Lat: ' + position.coords.latitude + ' Lon: ' + position.coords.longitude);
	}
});	