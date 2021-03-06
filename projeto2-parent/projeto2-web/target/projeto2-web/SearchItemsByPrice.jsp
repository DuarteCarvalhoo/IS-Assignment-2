<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" session="false"%>

<%
HttpSession session = request.getSession(false);
String user = (String) session.getAttribute("email");

if(user==null){
    response.sendRedirect("Error.jsp");
}
%>

<html>
    <title>MyBay - By Price Range</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../lib/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <body>
    <header class="w3-container w3-black">
        <h1>Please insert the lowest and highest prices</h1>
    </header>

    <div class="w3-container w3-half w3-margin-top">

    <form action="SearchByPrice" class="w3-container w3-card-4">
        <p>
            <input class="w3-input" type="text" name="lowestPrice" style="width:90%">
            <label class="w3-label w3-validate">Lowest price</label>
            <input class="w3-input" type="text" name="highestPrice" style="width:90%">
            <label class="w3-label w3-validate">Highest price</label>
        </p>

        <input type="hidden" name="order" value="0">
        <input class="w3-btn w3-section w3-deep-purple w3-ripple" type="submit" value="Search">
        
        </form>

    </div>
    <div style=position:absolute;bottom:10px;left:45%>
        <a href=InitialMenu.jsp><button class="w3-btn w3-xlarge w3-round-xlarge w3-deep-purple w3-hover-black" style="font-weight:900;"> Logout </button></a><br><br>
    </div>

    
    </body>
</html>
