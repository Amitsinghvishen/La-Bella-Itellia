<%-- 
    Document   : adminLogin
    Created on : Apr 5, 2019, 7:10:42 PM
    Author     : Amit
--%>


<%
String admin_username=request.getParameter("admin_username");
String admin_password=request.getParameter("admin_password");
if(admin_username.equals("admin") && admin_password.equals("123")){
    session.setAttribute("admin_login","true");
    response.sendRedirect("admin_home.jsp");
}
else{
    out.println("Wrong username or password");
}
%>