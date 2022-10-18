 // change icon in grid with no data

function cphone(rowVal, userlcid) {
 var imageName = "";
 var tooltipValue = "";
 var resultarray = null;
 try {
 var row = JSON.parse(rowVal);
 var rdata = row.telephone1_Value;
 
 if (rdata == true)
 {

 }

 else 
 {
 imageName = "new_/images/cphone.png";
 tooltipValue = "Company Phone";
 }

 resultarray = [imageName, tooltipValue];
 } catch (e) {
 console.log(e);
 }
 return resultarray;
}