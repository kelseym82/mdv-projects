//Beer Lager
//Author: Michael J. Kelsey
//For: Full Sail - ASD 1204

$(document).ready(function(){

	//Global Declarations - Assignments mad below
	var hdrMainVar = null;  
	var contentMainVar = null;  
	var ftrMainVar = null;  
	var contentTransitionVar = null;  
	var nameVar = null;  
	var wishlistVar = null;  
	var locationVar = null;  
	var starVar = null;
	var commentsVar = null;  
	var formVar = null;  
	var confirmationVar = null;  
	var contentDialogVar = null;  
	var hdrConfirmationVar = null;  
	var contentConfirmationVar = null;  
	var ftrConfirmationVar = null;  
	var inputMapVar = null;  
	
	// Constants  
	var MISSING = "missing";  
	var EMPTY = "";  
	var NO_STATE = "ZZ";
	
	//Assigned Global Variables
	
	hdrMainVar = $('#hdrMain');
	contentMainVar = $('#contentMain');
	ftrMainVar = $('#ftrMain');
	nameVar = $('#name');
	wishlistVar = $('#wishlist');
	locationVar = $('#location');
	starVar = $('#star');
	commentsVar = $('#comments');
	formVar = $('#form');
	contentTransitionVar = $('#contentTransition');
	confirmationVar = $('#confirmation');
	contentDialogVar = $('#contentDialog');
	hdrConfirmationVar = $('#hdrConfirmation');
	contentConfirmationVar = $('#contentConfirmation');
	ftrConfirmationVar = $('#ftrConfirmation');
	inputMapVar = $('#input[name*="_r"]');
});