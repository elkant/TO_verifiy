/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function loadmail(fieldn,inputf){
    
    
    var code=$("#"+fieldn).find(':selected').data("email");
  if(code!=='undefined'){  
   $("#"+inputf).val(code);
   $("#"+inputf+"l").html("<i style='color:green;'> (email : "+code+")</i>");
  }
  else{
       $("#"+inputf).val("");     
       $("#"+inputf+"l").html("<i style='color:red;'>(No email address)</i>");   
  }
    
} 