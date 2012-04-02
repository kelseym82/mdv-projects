//Beer Lager
//Author: Michael J. Kelsey
//For: Full Sail - ASD 1204

$(document).ready(function(){
	//Assigned Global Variables
	hdrMainVar = $('#hdrMain');
	contentMainVar = $('#contentMain');
	ftrMainVar = $('#ftrMain');
	nameVar = $('#name');
	wishlistVar = $('#wishlist');
	locationVar = $('#location');
	starVar = $('#star');
	commentsVar = $('#comments');
	nameLabelVar = $('#nameLabel');
	wishlistLabelVar = $('#wishlistLabel');
	locationLabelVar = $('#locationLabel');
	starLabelVar = $('#starLabel');
	commentsLabelVar = $('#commentsLabel');
	formVar = $('#form');
	contentTransitionVar = $('#contentTransition');
	confirmationVar = $('#confirmation');
	contentDialogVar = $('#contentDialog');
	hdrConfirmationVar = $('#hdrConfirmation');
	contentConfirmationVar = $('#contentConfirmation');
	ftrConfirmationVar = $('#ftrConfirmation');
	inputMapVar = $('#input[name*="_r"]');

	//When the page is loaded only the main content should be displayed
	hideContentDialog();
	hideContentTransition();
	hideConfirmation();
});


//Error Page Button
$('#buttonOK').click(function() {
	hideContentDialog();
	showMain();
	return false;      
});


//CONTENT SELECTION FUNCTIONS
//For Hiding and Displaying the Main Content and its header/footer
function hideMain(){
	hdrMainVar.hide();
	contentMainVar.hide();
	ftrMainVar.hide();
}

function showMain(){
	hdrMainVar.show();
	contentMainVar.show();
	ftrMainVar.show();
}
//For Hiding and Displaying the Transition Content
function hideContentTransition(){
	contentTransitionVar.hide();
}

function showContentTransition(){
	contentTransitionVar.show();
}
//For Hiding and Displaying the Dialog Content
function hideContentDialog(){
	contentDialogVar.hide();
}

function showContentDialog(){
	contentDialogVar.show();
}
//For Hiding and Displaying the Confirmation Content and its header/footer
function hideConfirmation(){  
  hdrConfirmationVar.hide();  
  contentConfirmationVar.hide();  
  ftrConfirmationVar.hide();  
}    
  
function showConfirmation(){  
  hdrConfirmationVar.show();  
  contentConfirmationVar.show();  
  ftrConfirmationVar.show();  
}  

//FORM VALIDATION
$('#form').submit(function(){
	var err = false;
	hideMain();

	//Resets the previously highlighted form entry
	nameLabelVar.removeClass(MISSING);
	wishlistLabelVar.removeClass(MISSING);
	locationLabelVar.removeClass(MISSING);
	starLabelVar.removeClass(MISSING);
	commentsLabelVar.removeClass(MISSING);
	inputMapVar.each(function(index){
		$(this).prev().removeClass(MISSING);
	});
	
	//Perfroms form validation
	inputMapVar.each(function(index){
		if($(this).val()==null || $(this).val()==EMPTY){
			$(this).prev().addclass(MISSING);
			err = true;
		}
	});
	if(nameVar.val()==NO_STATE){
		nameLabelVar.addClass(MISSING);
		err = true;
	}
	if(wishlistVar.val()==NO_STATE){
		wishlistLabelVar.addClass(MISSING);
		err = true;
	}
	if(locationVar.val()==NO_STATE){
		locationsLabelVar.addClass(MISSING);
		err = true;
	}
	if(starVar.val()==NO_STATE){
		starLabelVar.addClass(MISSING);
		err = true;
	}
	if(commentsVar.val()==NO_STATE){
		commentsLabelVar.addClass(MISSING);
		err = true;
	}
	
	// If the validation fails, this shows the dialog content
	if(err === true){
		showContentDialog();
		return false;
	}
	
	// If the validation passes, this shows the transition content
	showContentTransition();
	
	//This is the submit function
	$.post("/forms/requestProcessor.php", formVar.serialize(), function(data){
		confirmationVar.text(data);
		hideContentTransition();
		showConfirmation();
	});
	return false;
});

	



























