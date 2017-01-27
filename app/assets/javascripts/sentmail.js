$(document).ready(function(){
 $("#email").click(function(){
 	var msg=$('.message' ).val();
   $.ajax({
    type:'GET', 
    url: '/email', 
    data: { message: msg} ,
	    success:function(data){
	    console.log("Success" +data);
	  	},
	    error:function(data){
		console.log("ERROR" +data);
	    }    
  	});
    });

});


