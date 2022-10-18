 //display icon and tooltio for the grid column  
 function stscourse(rowData, userLCID) {  
   var str = JSON.parse(rowData);  
   var coldata = str.statuscode_Value;  
   var imgName = "";  
   var tooltip = "";  
   switch (coldata) {  
     case 1:  
       imgName = "new_/images/in.gif";  
       tooltip = "In Progress";  
       break;  

     case 100000000:  
       imgName = "new_/images/puse.gif";  
       tooltip = "puse.gif";  
       break;   

     case 2:  
       imgName = "new_/images/cond.gif";  
       tooltip = "Conducted";  
       break;     

 case 100000001:  
       imgName = "new_/images/cancel.png";  
       tooltip = "Canceled";  
       break;    

   }  
   var resultarray = [imgName, tooltip];  
   return resultarray;  
 }  
 