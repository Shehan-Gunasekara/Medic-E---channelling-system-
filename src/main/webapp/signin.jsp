<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medic</title>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
    <link rel="Stylesheet" href="styles/signin.css">


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

                <h4><i class="arrow left"></i><a href="home page.jsp">Back</a></h4>
                <h2>Sign in</h2>

                <form method="post" action="loginServlet">
                    <div class="inputBx">
                        <label>Email</label><br>
                        <input type="email" name="email" class="textbx" required>
                    </div>

                    <div class="inputBx">
                        <label>Password</label><br>
                        <input type="password" name="password" class="textbx" required>
                    </div>
                    
                    <div class="remember">
                        <p id="sicheckbox"><input id="sicheck" type="checkbox" name="" >Keep me signed in</p>
                    </div>

                    <div class="remember">
                        <a href="#forgetpassword">Forget password?</a>
                    </div>

                    <div >
                        <input type="submit" name="" value="Sign in" id="signinSubmit">
                    </div>
                        

                </form>

                <center><p id="dhaA">Don't have a patient account? <a href="signup.jsp">Sign up</a></p></center>
            </div>

        </div>
    </section>
    
    
    
    <script type="text/javascript">
    
    var status = document.getElementById("status").value;
    
    if(status=="failed"){
    	
    	swal("Sorry","enter correct username or password","error");
    }
    
    </script>
    
</body>
</html>