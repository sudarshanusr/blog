 
var ids = []
function check(i){

    console.log(i);
    if(document.getElementById('check_'+i).checked) {
       ids.push(""+i);
	  }else {
	    ids.pop(""+i);
    }
    
    
   console.log("data "+ids);
}

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
function newmailer(){
  

$.ajax({
    type:'GET', 
    url: '/mailers/new', 
    
    success:function(data){
    console.log("Success" +data);
  },
    error:function(data){
console.log("ERROR" +data);
    }


    
  });

}
function tag(){
  console.log("tag ids : ");
  console.log(ids);
  

$.ajax({
    type:'GET', 
    url: '/tags/new', 
    data: { ids: ids} ,
    success:function(data){
    console.log("Success" +data);
  },
    error:function(data){
console.log("ERROR" +data);
    }


    
  });
}
