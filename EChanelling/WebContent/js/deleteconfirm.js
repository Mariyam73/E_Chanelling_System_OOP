//enabling a button only after checkbox is checked


function goFurther(){
if (document.getElementById("check").checked == true)
document.getElementById("delete").disabled = false;
else
document.getElementById("delete").disabled = true;
}