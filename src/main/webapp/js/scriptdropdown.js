//drop down profile
function menuToggle() {
    const toggleMenu = document.querySelector('.menu');
    toggleMenu.classList.toggle('active');
}


//delete user account
function accountdeletealert() {

    var confi = confirm("Are you sure you want to delete your account");

    if (confi == true) {
        document.location = "patient account delete.jsp";
    }

}