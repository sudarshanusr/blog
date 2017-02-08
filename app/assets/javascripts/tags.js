
var ids = []
function check(i){
    console.log(i)
    if(document.getElementById('check_'+i).checked) {
    ids.push(""+i);
	} 
	else {
	ids.pop(""+i);
    }
    if(ids.length>0){
     $("#submit").prop('disabled', false);
    }else{
     $("#submit").prop('disabled', true);
    }
   console.log(ids);
}
$(document).ready(function(){
  $("#submit").prop('disabled', true);
 console.log("loaded" );

});
function send(){
	console.log(ids);
	console.log("aaa");
//console.log("/sendmail"+"&ids="+ids.toString());

$.ajax({
    type:'GET', 
    url: '/sentmail', 
    data: { ids: ids} ,
    success:function(data){
    console.log("Success" +data);
  },
    error:function(data){
console.log("ERROR" +data);
    }


    
  });

}


