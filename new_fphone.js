 // change icon in grid with no data

function fphone(rowVal, userlcid) {
 var imageName = "";
 var tooltipValue = "";
 var resultarray = null;
 try {
 var row = JSON.parse(rowVal);
 var rdata = row.fax_Value;
 
 if (rdata == null)
 {

 }

 else 
 {
 imageName = "new_/images/fphone.png";
 tooltipValue = "Main Fax";
 }

 resultarray = [imageName, tooltipValue];
 } catch (e) {
 console.log(e);
 }
 return resultarray;
}