$(document).ready(function(){
	$(".sk-fading-circle").hide();

	
 $("#email").click(function(){
 	$(".row").hide();
 	
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

 $(document).ajaxStart(function(){
    $(".sk-fading-circle").show();
  });
 $(document).ajaxStop(function(){
    $(".sk-fading-circle").hide();
  });


});


