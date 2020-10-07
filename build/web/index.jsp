<%-- 
    Document   : admin
    Created on : Mar 25, 2019, 6:09:27 PM
    Author     : Amit
--%>
<!DOCTYPE html>
<head>
    <title>La Bella Italia</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
    <link rel="stylesheet" href="css/animate.min.css">
    <style type="text/css">
    .modal{
    display:none;
    position: fixed;
    z-index:1;
    left:0;
    top:0;
    height: 100%;
    width: 100%;
    overflow:hidden;
    background-color:rgba(0,0,0,0.8);
    }
    .modal_1{
    display:block;
    position: fixed;
    z-index:2;
    left:0;
    top:0;
    height: 100%;
    width: 100%;
    overflow:hidden;
    background-color:rgba(0,0,0,0.8);
    }
    .modal-content{   
    background-color: rgba(0,0,0,0.7);
    margin: 20% auto;
    padding:60px;
    width:70%;
    height:50%;
    box-shadow: 0 5px 8px 0 rgba(0,0,0,0.2),0 7px 20px 0px rgba(0,0,0,0.2);
    animation-name: modalopen;
    animation-duration: 1s;
    }
    #closeBtn{
        color: #ccc;
        float: right;
        cursor: pointer;
    }
    #closeBtn_1{
        color: #ccc;
        float: right;
        cursor: pointer;
    }
    </style>

</head>
<body>
    <header class="header1">
        <nav>
            <div class="row clearfix">
                <img src="images/logo.png" class="logo"/>
                <ul class="main-nav animated slideInDown">
                    <li><a href="cakedelivery.html">CAKE DELIVERY</a></li>
                    <li><a href="admin/">ADMIN</a></li>
                    <li><a href="aboutus.html">ABOUT US</a></li>
                    <li><a href="signup.html">SIGN UP</a></li>
                </ul>
            </div>
        </nav>
        <div class="main-content-header">
        <h1>Welcome to the <span class="colorchange">La Bella Italia.</span><br>House of cake lovers</h1>
        <a href="#" id="signin" class="btn btn-full">Sign in</a>
        <a href="aboutus.html" class="btn btn-nav">Show more</a>
        </div>
        <div class="modal" id="modal">
                <div class="modal-content" id="modal-content">
                  <span id="closeBtn">&times</span>
                  <div style="text-align:center">
                   <h2 class="colorchange">Sign in</h2><br>
                   <form action="signin" method="post">
                       <input type="text" placeholder="Email" name="email" class="text-input" required /><br>
                       <input type="password" placeholder="Pasword" name="password" class="text-input" required /><br><br>
                   <input type="submit" class="btn btn-full" value="Sign in" />
                   </form> 
                </div>
                </div>
        </div>
                <% 
                   String email_valid=null;
                    email_valid=(String)session.getAttribute("email_valid");
                   if(email_valid == "wrong"){
                   out.println("<div class='modal_1' id='modal_1'>");
                   out.println("<div class='modal-content' id='modal-content'>");
                   out.println("<span id='closeBtn_1'>&times</span>");
                   out.println("<div style='text-align:center'>");
                   out.println("<h2 class='colorchange'>Wrong Email or password</h2><br>");
                   out.println("</div></div>");
                   session.setMaxInactiveInterval(1);
                   }
                           %>
            <script>
            console.log("Javascript 1 running");
            // Get modal element
            var modal1=document.getElementById("modal_1");
            //Get close button
            var closeBtn1=document.getElementById("closeBtn_1");

            //Add eventlistener for closeBtn
            closeBtn1.addEventListener("click",closeModal);

            //Funtion to close modal

            function closeModal(){
             console.log("closeModal");
             modal1.style.display="none";
            }

            window.addEventListener('click', outsideClick);

          // Funtion to close modal if outside click

              function outsideClick(e){
             if(e.target == modal1){
             modal1.style.display = 'none';
             }
            }
    
        </script>
    </header>
    <script>
            console.log("Javascript 2 running");
            // Get modal element
            var modal=document.getElementById("modal");
            //Get close button
            var closeBtn=document.getElementById("closeBtn");
            //Get signin button to show model
            var signin=document.getElementById("signin");
    
            // Add eventlistener for signin
            signin.addEventListener("click" ,openModal);

            //Add eventlistener for closeBtn
            closeBtn.addEventListener("click",closeModal);
    
            // Function to open modal
            function openModal(){
                console.log("openModal");
                modal.style.display ='block';
            }

            //Funtion to close modal

            function closeModal(){
             console.log("closeModal");
             modal.style.display="none";
            }

            window.addEventListener('click', outsideClick);

          // Funtion to close modal if outside click

              function outsideClick(e){
             if(e.target == modal){
             modal.style.display = 'none';
             }
            }
    
        </script>
</body>
</html>