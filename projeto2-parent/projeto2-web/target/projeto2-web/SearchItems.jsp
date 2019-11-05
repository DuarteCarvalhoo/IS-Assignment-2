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
    <head>
        <title>MyBay - Shopping Menu</title>
    </head>
    <body>
        <h1>Search Items Menu</h1><br>
        <h3>Choose an option:</h3><br>
        <a href="SearchAllItems.jsp"><button> Show All Items </button></a><br><br>
        <a href="SearchByCategory.jsp"><button> Search By Category </button></a><br><br>
        <a href="SearchByCountry.jsp"><button> Search By Country </button></a><br><br>
        <a href="SearchByPriceRange.jsp"><button> Search By Price Range </button></a>
    </body>
</html>