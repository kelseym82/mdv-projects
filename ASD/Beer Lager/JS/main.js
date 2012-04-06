//Beer Lager
//Author: Michael J. Kelsey
//For: Full Sail - ASD 1204
	


//Star Rating
$('#star').raty({
	cancel: true,
	cancelOff: 'cancel-off-big.png',
	cancelOn: 'cancel-on-big.png',
	size: 24,
	half: true,
	starHalf: 'star-half-big.png',
	starOff: 'star-off-big.png',
	starOn: 'star-on-big.png'
});


$(document).ready(function(){	
	var form = $('#form');	
	//FORM VALIDATION/SUBMIT		
	$('#form').submit(function(){
		form.validate({
			rules: {
				name: 'required',
			},//end rules
			messages: {
				name: "Please enter the name of the beer",
			},//end messages
			errorPlacement: function(error, element) {
				error.insertAfter(element.siblings("label"));
			}//end error placement
		}); //end validate

		var item			= {};
			item.name 		= ["Name of Beer:", $('#name').value];
			item.wishlist   = ["Wish List Item:", $('#wishlist').value];
			item.location 	= ["Brewery Location:", $('#location').value];
			item.comments 	= ["Comments:", $('#comments').value];
		//saves data into local storage
		localStorage.setItem(id, JSON.stringify(item));
		alert("Saved a Beer!");

	});
	
	//XML DATA LOAD	
	$('#xmlButton').bind('click', function(){
		$('#beerList').empty();
		$.ajax({
			url: 'xhr/data.xml',
			type: 'GET',
			dataType: 'xml',
			success: function(xml){
				$(xml).find("beer").each(function(){
					var name 		= $(this).find('name').text();
					var wishlist 	= $(this).find('wishlist').text();
					var rating 		= $(this).find('rating').text();
					var location	= $(this).find('location').text();
					var comments	= $(this).find('comments').text();
					$(
						'<ul data-role="listview">' +	
							'<li> Name of Beer: '+ name +'</li>' +
							'<li> On Wishlist: '+ wishlist +'</li>' +
							'<li> Rating: '+ rating +'</li>' +
							'<li> Comments: '+ comments +'</li>' +
						'</ul>'	
					)
					.appendTo('#beerList');
				});
			}
		});
	});
	
	
	//CSV DATA LOAD
	$('#csvButton').bind('click', function(){
		$('#beerList').empty();
		 $.ajax({
	        type: "GET",
	        url: "xhr/data.csv",
	        dataType: "text",
	        success: function(data) {
	        	var allTextLines = data.split(/\r\n|\n/);
	    		var csvText = allTextLines[0].split(',');
	    		var csvData = [];
				for (var i=1; i<allTextLines.length; i++) {
					var data = allTextLines[i].split(',');
					if (data.length == csvText.length) {
						var beers = []; 
						for (var j=0; j<csvText.length; j++) {
							beers.push(data[j]); 
						}
						csvData.push(beers); 
					}
					
				}
				
				for (var m=0; m<csvData.length; m++){
					var beers = csvData[m];
					$(
						'<ul data-role="listview">' +	
							'<li> Name of Beer: '+ beers[0] +'</li>' +
							'<li> On Wishlist: '+ beers[1] +'</li>' +
							'<li> Rating: '+ beers[2] +'</li>' +
							'<li> Comments: '+ beers[3] +'</li>' +
						'</ul>'	
					)
					.appendTo('#beerList');
				}
	        }		
		});
	});
	
	//JSON DATA LOAD
	
	$('#jsonButton').bind('click', function(){
		$('#beerList').empty();
		$.ajax({
			url: 'xhr/data.json',
			type: 'GET',
			dataType: 'json',
			success: function(beer){
	        	for (var i=0, j=beer.beerJson.length; i<j; i++){
					var jsBeer = beer.beerJson[i];
					$(
						'<ul data-role="listview">' +	
							'<li> Name of Beer: '+ jsBeer.name +'</li>' +
							'<li> On Wishlist: '+ jsBeer.wishlist +'</li>' +
							'<li> Rating: '+ jsBeer.rating +'</li>' +
							'<li> Comments: '+ jsBeer.comments +'</li>' +
						'</ul>'	
					)
					.appendTo('#beerList');
				}
			}
		});
	});

});//end ready


