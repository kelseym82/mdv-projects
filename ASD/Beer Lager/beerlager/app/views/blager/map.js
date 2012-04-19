function (doc){
	if(doc._id.substr(0,5) === "beer:"){
		emit(doc._id.substr(5), {
			"name": doc.name,
			"wishlist": doc.wishlist,
			"rating": doc.rating,
			"comments": doc.comments
			
		});
	}
};