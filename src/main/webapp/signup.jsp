<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medic</title>
    
    <link rel="Stylesheet" href="styles/signup.css" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


</head>
<body>

<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
    
    <section>
        <img class="logo" src="images/Medic logo.png" alt="logo" />
        <div class="imgBx">
            <img src="images/signin image.png">
        </div>

        <div class="contentBx">

            <div class="formBx">

                <h4><i class="arrow left"></i><a href="signin.jsp">Back</a></h4>
                <h2>Sign up </h2>
                <p id="supdot">as a patient</p>

                <form action="sign_up_Servlet" method="post">

                    <div class="inputBx">
                        <label>Full Name</label><br>
                        <input type="text" name="name" class="textbx" required>
                    </div>

                    <div class="inputBx">
                        <label>Email</label><br>
                        <input type="email" name="email" class="textbx" required>
                    </div>

                    <div class="inputBx">
                        <label>NIC</label><br>
                        <input type="text" name="nic" class="textbx" required>
                    </div>

                    <div class="inputBx">
                        <label>Password</label><br>
                        <input type="password" name="password" class="textbx" required>
                    </div>


                    <div class="inputBx">
                        <label>Confirm password</label><br>
                        <input type="password" name="repassword" class="textbx" required>
                    </div>

                    <div class="line">
                        
                        <div class="gender">

                            <label>Gender</label><br>

                            <select name="gender" id="selectbx">
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Other">Other</option>
                            </select>

                        </div>
                    
                        <div class="dob1">

                            <label>Date of birth</label><br>
                            <input type="date" name="birthday" id="selectbx2" required>

                        </div>
                    </div>
                    
                    <div class="remember">
                        <p id="sicheckbox"><input id="sicheck" type="checkbox" name="" required>accept terms and condition</p>
                    </div>

                    <div >
                        <input type="submit" name="" value="Sign up" id="signinSubmit">
                    </div>
                        

                </form>

                <center><p id="dhaA">Already have an account?<a href="signin.jsp">Sign in</a></p></center>
                <br>
            </div>

        </div>
    </section>
    
    
    
    <script type="text/javascript">
    
    var status = document.getElementById("status").value;
    
    if(status=="mismatchpassandrepass"){
    	
    	swal("Error", "Your password and confirmation password do not match", "error");
    }
    

    
    
    </script>
    
    
</body>
</html>