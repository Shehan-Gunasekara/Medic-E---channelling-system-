<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Medic</title>
    <link rel="Stylesheet" href="styles/home page.css" />
    <link rel="Stylesheet" href="styles/footer.css" />
    <link rel="Stylesheet" href="styles/counter.css" />
    <link rel="Stylesheet" href="styles/searchbar.css" />
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


  </head>
  <body>


<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">

    <div id="head">
      <header>
        <img class="logo" src="images/Medic logo.png" alt="logo" />

        <nav class="nav">
          <a
            href="#"
            class="nav-item is-active"
            active-color="rgba(0, 56, 255, 1)"
            >HOME</a
          >
          <a href="#" class="nav-item" active-color="rgba(0, 56, 255, 1)"
            >Doctor's near you</a
          >
          <a
            href="#"
            id="covidnews"
            class="nav-item"
            active-color="rgba(0, 56, 255, 1)"
            >Covid19<span class="dot"></span
          ></a>
          <span class="nav-indicator"></span>
        </nav>
        <a class="cta" href="signin.jsp">
          <button id="signup">Sign in</button></a
        >
      </header>
    </div>





    <div>
      <h1 id="mask">
        Wear a mask <font size="6">to protect the world from</font> covid19
      </h1>
      <h4 id="cursolepara">
        Lorem Ipsum is simply dummy text of the printing and typesetting
        industry. Lorem Ipsum has been the industry's standard dummy text ever.
      </h4>
      <a id="square-btn" href="#read">Read more</a>
      <img
        id="sliderImg1"
        src="images/landing page image 1.png"
        alt="image in slider"
      />
    </div>

    <div>
      <a id="facebooktop" href="https://www.facebook.com/" target="_blank"
        ><img src="images/Facebook logo.png"
      /></a>
      <a id="twittertop" href="https://twitter.com/i/flow/login" target="_blank"
        ><img src="images/Twitter logo.png"
      /></a>
      <a id="instatop" href="https://www.instagram.com/" target="_blank"
        ><img src="images/Instagram logo.png"
      /></a>
    </div>


    <!-- --------------------------    search ---------------------------->

    <div id="searchbar">
      <button class="searchbtn1" id="docChanneling">Doctor Channeling</button>
      <button class="searchbtn1" id="chatonline">Chat online</button>
      <button class="searchbtn1" id="covidtest">Covid19 test</button>

      <img id="searchbarBackGround" src="images/Rectangle 12.png" />
      <img id="sa" src="images/searchbar arrow.png">

      <form id="searchform" action="searchbar.php" method="post">
        <input
          type="text"
          id="docname"
          name="docname"
          placeholder="Doctor's name"
        />

        <input
          id="hospitalname"
          placeholder="Hospital name"
          name="hospitalName"
          type="text"
        />

        <input
          id="date"
          placeholder="Date"
          name="date"
          type="text"
          onfocus="(this.type='date')"
        />

        <input
          id="time"
          type="text"
          name="time"
          placeholder="Time"
          class="members"
        />

        <button id="sectionbtn" type="submit">Search</button>
      </form>
    </div>





    <!-- ----------------------     services ---------------------------------- -->


    <h2 id="Service">Services</h2>

    <div class="main" class="set">
      <div class="r1c1">
        <div class="mainimg">
          <img src="images/Ellipse in service.png" class="elipse" />
          <img src="images/channeling icon.png" class="icon" />
        </div>

        <h1 class="font1">Channeling</h1>
        <p class="font1">
          Laboratary fdgsnjn rgserg argsg eargsthsteghstghth eags
        </p>

        <!-- <a href="Selected Hotel Overview Page.php?id=1" class="font" class="hove">BOOK NOW</a> -->
      </div>

      <div class="r1c1">
        <div class="mainimg">
          <img src="images/Ellipse in service.png" class="elipse" />
          <img src="images/medicine icon.png" class="icon" />
        </div>

        <h1 class="font1">Order medicine</h1>
        <p class="font1">
          Laboratary fdgsnjn rgserg argsg eargsthsteghstghth eags
        </p>

        <!-- <a href="Selected Hotel Overview Page.php?id=1" class="font" class="hove">BOOK NOW</a> -->
      </div>

      <div class="r1c1">
        <div class="mainimg">
          <img src="images/Ellipse in service.png" class="elipse" />
          <img src="images/Laboratary icon.png" class="icon" />
        </div>

        <h1 class="font1">Laboratary</h1>
        <p class="font1">
          Laboratary fdgsnjn rgserg argsg eargsthsteghstghth eags
        </p>

        <!-- <a href="Selected Hotel Overview Page.php?id=1" class="font" class="hove">BOOK NOW</a> -->
      </div>

      <div class="r1c1">
        <div class="mainimg">
          <img src="images/Ellipse in service.png" class="elipse" />
          <img src="images/Ambulance icon.png" class="icon" />
        </div>

        <h1 class="font1">Ambulance</h1>
        <p class="font1">
          Laboratary fdgsnjn rgserg argsg eargsthsteghstghth eags
        </p>

        <!-- <a href="Selected Hotel Overview Page.php?id=1" class="font" class="hove">BOOK NOW</a> -->
      </div>

      <div class="r1c1">
        <div class="mainimg">
          <img src="images/Ellipse in service.png" class="elipse" />
          <img src="images/pcr icon.png" class="icon" />
        </div>

        <h1 class="font1">PCR</h1>
        <p class="font1">
          Laboratary fdgsnjn rgserg argsg eargsthsteghstghth eags
        </p>

        <!-- <a href="Selected Hotel Overview Page.php?id=1" class="font" class="hove">BOOK NOW</a> -->
      </div>

      <div class="r1c1">
        <div class="mainimg">
          <img src="images/Ellipse in service.png" class="elipse" />
          <img src="images/vet care icon.png" class="icon" />
        </div>

        <h1 class="font1">Vet care</h1>
        <p class="font1">
          Laboratary fdgsnjn rgserg argsg eargsthsteghstghth eags
        </p>

        <!-- <a href="Selected Hotel Overview Page.php?id=1" class="font" class="hove">BOOK NOW</a> -->
      </div>

      <div class="r1c1">
        <div class="mainimg">
          <img src="images/Ellipse in service.png" class="elipse" />
          <img src="images/Ambulance icon.png" class="icon" />
        </div>

        <h1 class="font1">Ambulance</h1>
        <p class="font1">
          Laboratary fdgsnjn rgserg argsg eargsthsteghstghth eags
        </p>

        <!-- <a href="Selected Hotel Overview Page.php?id=1" class="font" class="hove">BOOK NOW</a> -->
      </div>
    </div>


    <a id="more" href="read"><span>more</span></a>


    

    <div id="bluesection">
      <h1>Protect from covid19</h1>
      <p>
        Lorem Ipsum is simply dummy text of the printing and typesetting
        industry. Lorem Ipsum has been the industry's standard dummy text ever.
      </p>
      <a id="square-btn3" href="read"><span>Read</span></a>
    </div>

    <img id="virusimage" src="images/covid virus image.png" />

    <!----------------------------------            popular specialities            ---------------------------- -->

    <h2 id="popular">Popular Specialities</h2>

    <div class="main2">
      <div class="r1c2" id="r1c2a">
        <div class="mainimg2">
          <img src="images/Frame 31.png" />
        </div>

        <h1 class="font2">Channel a physician</h1>
        <p class="font2">
          sfhhk fgsregsr ergse rgsergserg earghsergh eargwrg arwgargsaergeahg
          ergs
        </p>
      </div>

      <div class="r1c2" id="r1c2b">
        <div class="mainimg2">
          <img src="images/Channel an Eye surgeon.png" />
        </div>

        <h1 class="font2">Channel an Eye surgeon</h1>
        <p class="font2">
          sfhhk fgsregsr ergse rgsergserg earghsergh eargwrg arwgargsaergeahg
          ergs
        </p>
      </div>

      <div class="r1c2" id="r1c2c">
        <div class="mainimg2">
          <img src="images/Channel a Neurologist.png" />
        </div>

        <h1 class="font2">Channel a Neurologist</h1>
        <p class="font2">
          sfhhk fgsregsr ergse rgsergserg earghsergh eargwrg arwgargsaergeahg
          ergs
        </p>
      </div>

      <div class="r1c2" id="r1c2d">
        <div class="mainimg2">
          <img src="images/Channel a Pediatrician.png" />
        </div>

        <h1 class="font2">Channel a Pediatrician</h1>
        <p class="font2">
          sfhhk fgsregsr ergse rgsergserg earghsergh eargwrg arwgargsaergeahg
          ergs
        </p>
      </div>
    </div>

    <a id="more2" href="read"><span>more</span></a>

    <!----------------------------------            chat           ---------------------------- -->

    <h2 id="chat">Chat</h2>

    <img id="chat1" src="images/chat doctor background.png" />
    <img id="docpic" src="images/chatprofile icon.png" />
    <img id="mychat" src="images/mychat.png" />
    <img id="chat2" src="images/chat doctor background 2.png" />
    <img id="docpic2" src="images/chatprofile icon.png" />

    <h2 id="chat3">Chat with our doctotrs</h2>
    <p id="chatp">
      Lorem Ipsum is simply dummy text of the printing and typesetting industry.
      Lorem Ipsum has been the industry's standard dummy text ever.
    </p>
    <a id="square-btn1" href="read"><span>Start now</span></a>

    <h1 id="partners">Our Partners</h1>
    <img id="partnersimage" src="images/partners.png" />

    <!---------------------------------- counter parrt---------------------- -->

    <div class="project-counter-wrp">
      <ul>
        <li>
          <i class="fa fa-briefcase"></i>
          <p id="number1" class="number">500</p>
          <span></span>
          <p>Doctors</p>
        </li>
        <li>
          <i class="fa fa-smile-o"></i>
          <p id="number2" class="number">120</p>
          <span></span>
          <p>Hospitals</p>
        </li>
        <li>
          <i class="fa fa-coffee"></i>
          <p id="number3" class="number">359</p>
          <span></span>
          <p>Patients</p>
        </li>
        <li>
          <i class="fa fa-coffee"></i>
          <p id="number4" class="number">450</p>
          <span></span>
          <p>Channelings</p>
        </li>
      </ul>
    </div>

    
    <!-- ----------------footer --------------------------------------------------- -->
    <footer>
      <img id="footbg" src="images/footer background.png" />
      <h1>Medic</h1>

      <ul class='About'>
     
        <li class='first'> About </li>
        <li class='aboutlist'> <a href='aboutus.php'> About Us </a> </li>
        <li class='aboutlist'> <a href='##'> Founder's Letter </a> </li>
  
      </ul>
  
      <ul class='Customerservice'>
  
        <Li class='first'> Customer Service </li>
        <li class='Customerservicelist'> <a href='##'> Contact Us </a> </li>
        <li class='Customerservicelist'> <a href='##'> Ask a Question </a> </li>
        <li class='Customerservicelist'> <a href='##'> Gift Cards </a> </li>
        <li class='Customerservicelist'> <a href='FAQ Page.php'> FAQ </a> </li>
  
      </ul>
  
      <ul class='Informations'>
  
        <li class='first'> Informations </li>
        <li class='informationlist'> <a href='##'> Work With Us </a> </li>
        <li class='informationlist'> <a href='##'> Privacy policy </a> </li>
        <li class='informationlist'> <a href='##'> Term and Conditions </a> </li>
  
      </ul>

      <a id="gplay" href="https://play.google.com/store/movies" target="_blank"><img src="images/google play icon.png"></a>
      <a id="icloud" href="https://play.google.com/store/movies" target="_blank"><img src="images/ios.png"></a>

      <ul class='Socialmedia'>
        <li id="f1img"> <a href='https://www.facebook.com/'> <img  src='images/footer facebook.svg'> </a> </li>
        <li id="f2img"> <a href='https://twitter.com/?lang=en'> <img src='images/footer twitter.svg'> </a> </li>
        <li id="f3img"> <a href='https://www.instagram.com/'> <img src='images/footer insta.svg'> </a> </li>
      </ul>

        
      <h2>Copyright © Medic All rights reserved</h2>
    </footer>

    
    
    
    
    
    
    
    
    
    
    
    
    
    <!-- --------------------footer end------------------- -->
    
    
    <!-- header script -->
    <script src="js/home page.js"></script>  

    <!-- scroll script -->
    <script src="js/scroll-out.js"></script>
    <script type="text/javascript">
      ScrollOut({
        targets: "#r1c2a,.r1c2,.r1c1,img,h1,h2,h3,h4,p,a,ul,.searchbtn1",
      });
    </script>

    <!-- counter script -->
    <script>
      var project = setInterval(projectDone, 10);
      var clients = setInterval(happyClients, 10);
      var coffee = setInterval(cupsCoffee, 10);
      var eded = setInterval(edededed, 10);
      let count1 = 1;
      let count2 = 1;
      let count3 = 1;
      let count4 = 1;

      function projectDone() {
        count1++;
        document.querySelector("#number1").innerHTML = count1;
        if (count1 == 500) {
          clearInterval(project);
        }
      }

      function happyClients() {
        count2++;
        document.querySelector("#number2").innerHTML = count2;
        if (count2 == 120) {
          clearInterval(clients);
        }
      }

      function cupsCoffee() {
        count3++;
        document.querySelector("#number3").innerHTML = count3;
        if (count3 == 359) {
          clearInterval(coffee);
        }
      }

      function edededed() {
        count4++;
        document.querySelector("#number4").innerHTML = count4;
        if (count4 == 450) {
          clearInterval(eded);
        }
      }
    </script>
    
    <script type="text/javascript">
    
    var status = document.getElementById("status").value;
    
    if(status=="success"){
    	
    	swal("Congrats!", "Account created", "success");
    }
    
    if(status=="Accountdeleted"){
    	
    	swal("Done", "Account Deleted", "success");
    }
    

    
    
    </script>
    
  </body>
</html>
