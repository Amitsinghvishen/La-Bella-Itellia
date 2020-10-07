<%-- 
    Document   : admin
    Created on : Apr 2, 2019, 5:08:47 PM
    Author     : Amit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin login</title>
            <link rel="stylesheet" type="text/css" href="../css/style.css">
            <link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
    </head>
    <body>
        <header class=" header1 overlay">
        <nav>
            <div class="row clearfix">
                <img src="../images/logo.png" class="logo"/>
                <ul class="main-nav animated slideInDown">
                    <li><a href="../index.jsp">home</a></li>

                    <li><a href="../aboutus.html">ABOUT US</a></li>
                </ul>
                <div  class="main-content-header">
        <form style="text-align: center" action="adminLogin.jsp" method="post">
            <input type="text" name="admin_username" placeholder="Username" class="text-input margin" required /><br>
            <input type="password" name="admin_password" placeholder="Password" class="text-input margin" required /><br>
            <input style="margin:12px 12px 12px 10px;" type="submit" class="btn btn-full" value="   Login   " />
        </form>
                </div>
            </div>
        </nav>
    </header>
</body>
    </body>
</html>
