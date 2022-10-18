 //display icon and tooltio for the grid column  
 function ganderIcon(rowData, userLCID) {  
   var str = JSON.parse(rowData);  
   var coldata = str.gendercode_Value;  
   var imgName = "";  
   var tooltip = "";  
   switch (coldata) {  
     case 1:  
       imgName = "new_/images/male.png";  
       tooltip = "Male";  
       break;  
     case 2:  
       imgName = "new_/images/female.png";  
       tooltip = "Female";  
       break;    
   }  
   var resultarray = [imgName, tooltip];  
   return resultarray;  
 }  
 