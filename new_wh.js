
 // change icon in grid with no data

function wh(rowVal, userlcid) {
 var imageName = "";
 var tooltipValue = "";
 var resultarray = null;
 try {
 var row = JSON.parse(rowVal);
 var rdata = row.new_workinghourssummary_Value;
 
 if (rdata == null)
 {

 }

 else 
 {
 imageName = "new_/images/wh.png";
 tooltipValue = "Company Working Hours";
 }

 resultarray = [imageName, tooltipValue];
 } catch (e) {
 console.log(e);
 }
 return resultarray;
}