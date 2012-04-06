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

//FORM VALIDATION/SUBMIT	
$(document).ready(function(){	
	var form = $('#form');	
	
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
	
	
$('#xmlButton').bind('click', function(){
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


});//end ready


