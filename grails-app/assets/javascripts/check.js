/**
 * Created by Mitch on 4/12/2015.
 */
function check(){
    var isValid = true;
    $('.form-field').each(function() {
        if ( $(this).val() === '' )
            isValid = false;
            alert("Not all fields filled out!");
            return isValid;
    });
    if (isValid === true)
        alert("Submitted Successfully");
    return isValid;
}