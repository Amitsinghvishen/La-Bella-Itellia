<%-- 
    Document   : add_product
    Created on : Apr 5, 2019, 10:06:34 PM
    Author     : Amit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add item</title>
            <link rel="stylesheet" type="text/css" href="../css/style.css">
            <link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
    </head>
    <body style="background-color: black; text-align: center">
        <h1>Enter Item details</h1><br>
        <form action="AddProduct" style="text-align: center" method="post" enctype="multipart/form-data">
            <input type="text" name="name" placeholder="Item Name" class="text-input" required><br>
            <input type="number" name="cost" placeholder="Cost" class="text-input" required><br>
            <select name="category" class="text-input" ><br>
                <option value="Pizza">Pizza</option>
                <option value="Cake">Cake</option>
                <option value="Pasta">Pasta</option>
                <option value="Drink">Drink</option><br>
                </select><br>
                <input type="file" class="text-input" name="image" /><br>
                <br>
            <input type="submit" value="Submit" class="btn btn-full" >
        </form>
    </body>
</html>
