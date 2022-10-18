 //display icon and tooltio for the grid column  
 function dadrIcon(rowData, userLCID) {  
   var str = JSON.parse(rowData);  
   var coldata = str.new_nativelanguage_Value;  
   var imgName = "";  
   var tooltip = "";  
   switch (coldata) {  
     case 100000000:  
       imgName = "new_/images/dadicon.png";  
       tooltip = "Arabic";  
       break;  
   }  
   var resultarray = [imgName, tooltip];  
   return resultarray;  
 }  
 
 