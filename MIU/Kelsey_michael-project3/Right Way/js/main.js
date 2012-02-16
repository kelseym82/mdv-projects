//Project 3
//MIU
//Michael Kelsey

var parseForm = function(data){
	console.log(data);
};

$(document).ready(function(){
	
	var aiform = $('#aiform');
	
	aiform.validate({
		invalidHandler: function(form, validator){},
		submitHandler: function(){
			var data = aiform.serializeArray();
			parseForm(data);
		}
	});

});



/*
window.addEventListener("DOMContentLoaded", function(){

	function $(x){
		var theElement = document.getElementById(x);
		return theElement;
	}
	
	
	//Formfield Function
	function makeCategory(){
		var formTag = document.getElementsByTagName("controlgroup"),
			selectLi = $('select'),
			makeSelect = document.createElement('select');
			makeSelect.setAttribute("id", "category");
		for(var i=0, j=selectCategory.length; i<j; i++){
			var makeOption = document.createElement('option');
			var optText = selectCategory[i];
			makeOption.setAttribute("value", optText);
			makeOption.innerHTML = optText;
			makeSelect.appendChild(makeOption);
		}
		selectLi.appendChild(makeSelect);
	}
	

	
	//storedata function
	function storeData(key){
		if(!key){
			var id 				= Math.floor(Math.random()*10000000001);
		}else{
			id = key;
		}
		//This gathers the form data and stores it in an object
		var item			= {};
			item.category	= ["Category:", $('category').value];
			item.name 		= ["Name of Activity:", $('name').value];
			item.help		= ["Needs Assistance:", helpValue];
			item.time 		= ["Duration:", $('time').value];
			item.date      	= ["Date Due:", $('date').value];
			item.notes		= ["Notes:", $('notes').value];
		//saves data into local storage
		localStorage.setItem(id, JSON.stringify(item));
		alert("Saved a Thing to Do… NOW GET TO IT!");
	}
	
	//this gets the data
	function getData(){
		if(localStorage.length === 0){
			alert("There is no data saved, test data was added.");
			autoFillData();
		}
		var makeDiv = document.createElement('div');
		makeDiv.setAttribute("id", "items");
		var makeList = document.createElement('ul');
		makeDiv.appendChild(makeList);
		document.body.appendChild(makeDiv);
		for(var i=0, j=localStorage.length; i<j; i++){
			var makeli = document.createElement('li');
			var linksLi = document.createElement('li');
			makeList.appendChild(makeli);
			var key = localStorage.key(i);
			var value = localStorage.getItem(key);
			var obj = JSON.parse(value);
			var makeSubList = document.createElement('ul');
			makeli.appendChild(makeSubList);
			getImage(obj.category[1], makeSubList);
			for(var n in obj){
				var makeSubli = document.createElement('li');
				makeSubList.appendChild(makeSubli);
				var optSubText = obj[n][0]+" "+obj[n][1];
				makeSubli.innerHTML = optSubText;
				makeSubList.appendChild(linksLi);
			}
			makeItemLinks(localStorage.key(i), linksLi); //creates edit/delete buttons for each in local storage.
		}
	}
	
	
	//gets the image for category
	function getImage(catName, makeSubList){
		var imageLi = document.createElement('li');
		makeSubList.appendChild(imageLi);
		var newImg = document.createElement('img');
		var setSource = newImg.setAttribute("src", "images/" + catName + ".png");
		imageLi.appendChild(newImg);
	}
	
	//Autofill data
	//Stores json.js data to local storage
	function autoFillData(){
		for(var n in json){
			var id = Math.floor(Math.random()*10000000001);
			localStorage.setItem(id, JSON.stringify(json[n]));
		}
	}
	
	
	//makes item links function
	//creates edit/delte buttions
	function makeItemLinks(key, linksLi){
		var editLink = document.createElement('a');
		editLink.href = "#";
		editLink.key = key;
		var editText = "Edit Activity";
		editLink.addEventListener("click", editItem);
		editLink.innerHTML = editText;
		linksLi.appendChild(editLink);
		
		//line break
		var breakTag = document.createElement('br');
		linksLi.appendChild(breakTag);
		
		var deleteLink = document.createElement('a');
		deleteLink.href = "#";
		deleteLink.key = key;
		var deleteText = "Delete Activity";
		deleteLink.addEventListener("click", deleteItem);
		deleteLink.innerHTML = deleteText;
		linksLi.appendChild(deleteLink);
	
	
	}
	
	
	function editItem(){
		var value = localStorage.getItem(this.key);
		var item = JSON.parse(value);
		
		//toggleControls("off"); Don't think this is used CONFUSED THE CRAP OUT OF ME!!!!
		
		$('category').value = item.category[1];
		$('name').value = item.name[1];
		var radios = document.forms[0].help;
		for (var i = 0; i <radios.length; i++){
			if(radios[i].value == "Yes"  && item.help[1] == "Yes"){
				radios[i].setAttribute("checked", "checked");
			}else if(radios[i].value == "No" && item.help == "No"){
				radios[i].setAttribute("checked", "checked");
			}
		}
		$('time').value = item.time[1];
		$('date').value = item.date[1];
		$('help').value = item.help[1];
		$('notes').value = item.notes[1];
		
		//Remove the initial listener from the input 'save' button.
		save.removeEventListener('click', storeData);
		//Change Submit button value to say edit button
		$('submit').value = "Edit Activity";
		var editSubmit = $('submit');
		editSubmit.addEventListener('click', validate);
		editSubmit.key = this.key;
	}
	
	//delete single item
	function deleteItem(){
		var ask = confirm("Are you sure you want to delete?");
		if(ask){
			localStorage.removeItem(this.key);
			alert("Activity was deleted");
			window.location.reload();
		}else{
			alert("Activity was NOT deleted.");
		}
	}
	
	
	//clear the data
	function clearLocal(){
		if(localStorage.length === 0){
			alert("No items exist, please enter a thing to do so you can clear it.")
		}else{
			localStorage.clear();
			alert("All things to do cleared!");
			window.location.reload();
			return false;
		}
	}
	
	function validate(e){
		//Define elements to validate
		var getCat = $('category');
		var getName = $('name');
		//reset error msg
		errMsg.innerHTML = "";
		getCat.style.border = "1px solid #352213";
		getName.style.border = "1px solid #352213";
		//error messages
		var messageAry = [];
		//Category Validation
		if (getCat.value === "--Select--"){
			var catError = "Please Select a Category.";
			getCat.style.border = "1px solid red";
			messageAry.push(catError);
		}
		//Name validation
		if (getName.value === ""){
			var nameError = "Please enter the name of the activity.";
			getName.style.border = "1px solid red";
			messageAry.push(nameError);
		}
			
		//Error Display on screen
		if(messageAry.length >= 1){
			for(var i=0, j=messageAry.length; i < j; i++){
				var txt = document.createElement('li');
				txt.innerHTML = messageAry[i];
				errMsg.appendChild(txt)
			}
			e.preventDefault();
			return false;
		}else{
			storeData(this.key);
		}
	
	}
	
	
	
	
	//Variables
	var selectCategory = ["--Select--", "Errand" , "Chore", "Me-Time"],
		helpValue,
		errMsg = $('errors');
	;
	makeCategory();
	
	
	//Sort the List
	var makeSortedList = function() {
	    var myList, callbackFunc;
	    myList = [];
	    _.each(_.keys(localStorage), function(key) {
	      var myObj, value;
	      value = localStorage.getItem(key);
	      myObj = JSON.parse(value);
	      myObj.key = key;
	      myList.push(myObj);
	    });
	    callbackFunc = function(a, b) {
	      if (a.yourObjectsPropertyToSortBy === b.date) {
	        if (a.yourObjectsPropertyToSortBy === b.date) return 0;
	        return (a.yourObjectsPropertyToSortBy < b.date ? -1 : 1);
	      }
	      if (a.yourObjectsPropertyToSortBy < b.date) {
	        return -1;
	      } else {
	        return 1;
	      }
	    };
	    return myList.sort(callbackFunc);
    };

	
	
	
	
	
	
	//var displayLink = $('displayData');
	//displayLink.addEventListener("click", getData);
	//var clearLink = $('clear');
	//clearLink.addEventListener("click", clearLocal);
	//var viewList = $('viewList');
	//viewList.addEventListener("click", makeSortedList);
	//var save = $('submit');
	//save.addEventListener("click", validate);


});*/