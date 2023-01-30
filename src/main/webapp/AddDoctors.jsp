<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <% 

if(session.getAttribute("email")==null){
	response.sendRedirect("home page.jsp");
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medic</title>

  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Medic</title>
  <!-- ================================================ Google Fonts ================================================================== -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
    rel="stylesheet">

  <!-- ================================================ Bootstrap ================================================================== -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <!-- ================================================ Font Awsome ================================================================== -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />

  <!-- ================================================ Custom CSS ================================================================== -->
  <link rel="Stylesheet" href="styles/header.css" />
  <link rel="Stylesheet" href="styles/home page.css" />
  <link rel="Stylesheet" href="styles/footer.css" />
  <link rel="Stylesheet" href="styles/counter.css" />
  <link rel="Stylesheet" href="styles/searchbar.css" />
  <link rel="stylesheet" href="styles/sidebar.css">
  <link rel="stylesheet" href="styles/admin.css">

	<script src="js/addUser.js">
    </script>
</head>
<body>

    <div id="head">
    <header>
      <img class="logo" src="images/Medic logo.png" alt="logo">

      <nav class="navi">
        <a href="AdminHomepage.jsp" class="navi-item is-active" active-color="rgba(0, 56, 255, 1)">HOME</a>
        <a href="#" class="navi-item" active-color="rgba(0, 56, 255, 1)">Doctor's near you</a>
        <a href="#" id="covidnews" class="navi-item" active-color="rgba(0, 56, 255, 1)">Covid19<span class="dot"></span></a>
        <span class="navi-indicator"></span>
      </nav>
      
    </header>
  </div>

  <main>
    <div class="row">
      <div class="col-2 sidebar">
        <img class="nav logo-side" src="images/Medic logo.png" alt="logo">
        <ul class="nav flex-column nav-pills">
          <li class="nav-item ">
            <a class="nav-link  sidebar-link" href="AdminDashboard.jsp"><i class="fa-solid fa-chart-line"></i> Dashboard</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active toggle sidebar-link"  href="ManageUsers.jsp"><i class="fa-solid fa-calendar"></i> Manage Users</a>
          
          </li>
          <li class="nav-item">
            <a class="nav-link sidebar-link" href="AdminProfile.jsp"><i class="fa-solid fa-user"></i> Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link sidebar-link logout-btn" href="logout"><i class="fa-solid fa-arrow-right-from-bracket"></i> Logout</a>
          </li>
        </ul>
      </div>
    </div>
    <div class="region-main">
	<div class="animate">
        <h1 class="">Add doctor account</h1>
        <form action="doc" onsubmit="return checkPassword()" method="post" enctype="multipart/form-data">
        <table width="65%">
        	<tr>
        	
        	<td>Doctor ID </td>  <td>  <input type="text" name="DID"></td><br>
        	</tr>
        	<tr> 
        	<td>NIC     </td><td><input type="text" name="NIC" maxlength="11"></td><br>
        	</tr>
        	<tr>
        	<td>Full Name</td><td> <input type="text" name="Name"></td>
        	</tr>
        	<tr>
        	<td>Address </td> <td><input type="text" name="Address"></td>
        	</tr>
        	<tr>
        	<td>E-Mail</td><td><input type="email" name="Email"></td>
        	</tr>
        	<tr>
        	<td>Enter new Password </td> <td><input type="password" name="password1" id="password1"></td>
        	</tr>
        	<tr>
        	<td>Confirm the password</td><td> <input type="password" name="password2" id="password2"></td>
        	</tr>
        	<tr>
        	<td>
        	Gender</td>
        	<td> 
        	<input type="radio" name="gender" value="male">Male
        	<input type="radio" name="gender" value="Female">Female<br>
        	</td>
        	<tr>
        	<td>Phone Number</td><td> <input type="text" name="phone" maxlength="10" ></td>
        	</tr>
        	<tr>
        	<td>Specialization </td> <td> <input type="text" name="Specialization" ></td>
        	</tr>
        	
        	
        	</table>
        	<br><br>
        	upload an passport size image
        	
        	<input type="file" name="image" id="image" onchange="return fileValidation()">
        	<br><br>
        	
			
			 <input type="submit" name="btn_submit"  onclick="checkPassword()">
        	
        	
        </form>
 
	</div>
    </div>
  </main>


</body>
</html>