//Beer Lager
//Author: Michael J. Kelsey
//For: Full Sail - ASD 1204

$(document).ready(function(){	
	var $db = $.couch.db('blager');
	
	$.ajaxSetup ({
		cache : false
	});
	//CouchDB Function
	$('#couchButton').on('click', function(){
		$('div#couchList').empty();
		$.ajax({
			url: "_view/blager",
			cache: false,
			dataType: "json",
			beforeSend: function(){
				$.mobile.changePage('#wishlist')
			},
			success : function(data){
				$.each(data.rows, function(index, beer){
					var id = "beer:" + beer.value.name;
					console.log(id);
					var name = beer.value.name;
					var wishlist = beer.value.wishlist;
					var rating = beer.value.rating;
					var comments = beer.value.comments;
					$(
						'<div class="beerlist">' +	
							'<ul data-role="listview">' +
								'<li class="name"><b>Name: </b> '+ name +'</li>' +
								'<li class="wishlist"><b> On Wishlist:</b> '+ wishlist +'</li>' +
								'<li class="rating"> <b> Rating: </b>'+ rating +'</li>' +
								'<li class="comments"><b> Comments: </b>'+ comments +'</li>' +
								'<a href="#" class="edit" id ="'+id+'" >Edit</a>' +
								'<a href="#" class="delete" id ="'+id+'"> Delete</a>' +
							'</ul>' +
						'</div>' 
					)
					.appendTo('div#couchList');
				});
			}
		});
	});
	
	//Delete Single Item Button
	$("div#couchList").click(function(event) {
		var $tgt = $(event.target);
		if ($tgt.is('a')) {
			id = $tgt.attr("id");
			console.log(id);
		    if ($tgt.hasClass("edit")) {
		      	html = '<span class="editconfirm">Are you sure you want to edit? <a href="#" class="doEdit" id="'+id+'">Yes</a> <a href="#" class="cancelEdit"> No</a></span>';
		      	$tgt.parent().append(html);   
		    }
			if ($tgt.hasClass("doEdit")) {
				$db.openDoc(id, {
					success: function(doc){
						
						var name = doc.name;
						var rating = doc.rating;
						var wishlist = doc.wishlist;
						var comments = doc.comments;
						$db.removeDoc(doc);
						$.mobile.changePage('#form');
						$('#name').val(name);
						$('#wishlist').val(wishlist);
						$('#rating').val(rating);
						$('#comments').val(comments);
						
					}
				})
			}
			if ($tgt.hasClass("cancelEdit")) {
				$tgt.parents("span.editconfirm").remove();
			}
		    if ($tgt.hasClass("delete")) {
		    	html = '<span class="deleteconfirm">Are you sure you want to delete? <a href="#" class="dodelete" id="'+id+'">Yes</a> <a href="#" class="canceldelete"> No</a></span>';
		      	$tgt.parent().append(html);
		    }
		    if ($tgt.hasClass("dodelete")) {
				//console.log(id);
		    	$db.openDoc(id, { 
					success: function(doc) {
		       			$db.removeDoc(doc, { 
							success: function() {
		        				$tgt.parents("div.beerlist").remove();     
		       	}})
		    }});      
			}
			if ($tgt.hasClass("canceldelete")) {
				$tgt.parents("span.deleteconfirm").remove();
			}
		}
	});

	
	
	$('#deleteOne').on('click', function(){
		var deleteThis = $("#beerID").text();
		var ask = confirm("Are you sure you want to delete?");
		if(ask){
			$db.openDoc(deleteThis,{
				success: function(doc){
					$db.removeDoc(doc, {
						success: function(){
							alert('Deleted!');
						},
						error: function(){
							alert('ERROR!');
						}
					});
				}
			});
			alert("Entry was deleted");
		} else {
			alert("Entry was not deleted");
		}
	
	});
	
	//Clear Button
	$('#dataClear').bind('click',function(){
		$('#beerList').empty();
		$('#couchList').remove();
	});
	
	
	
	var form = $('#form');	
	//FORM VALIDATION/SUBMIT		

	
	$('#submit').on('click', function(x){
		x.preventDefault();
		var info = {};
		info._id = "beer:"+ $("#name").val();
		info.name = $("#name").val();
		info.wishlist = $('#wishlist').val();
		info.rating = $('#rating').val();
		info.comments = $('#comments').val();
		info.type = "beer"
		$db.saveDoc(info, {
			success : function() {
				$.mobile.changePage('#home');
				alert("Saved a beer!");
			},
			error: function(){
				alert("ERROR!")
			}
		});
	});
});//end ready


