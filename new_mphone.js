 // change icon in grid with no data

function mphone(rowVal, userlcid) {
 var imageName = "";
 var tooltipValue = "";
 var resultarray = null;
 try {
 var row = JSON.parse(rowVal);
 var rdata = row.mobilephone_Value;
 
 if (rdata == true)
 {

 }

 else 
 {
 imageName = "new_/images/mphone.png";
 tooltipValue = "Mobile Phone";
 }

 resultarray = [imageName, tooltipValue];
 } catch (e) {
 console.log(e);
 }
 return resultarray;
}