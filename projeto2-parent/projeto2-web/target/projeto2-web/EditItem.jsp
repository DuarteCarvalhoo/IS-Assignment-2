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
        <title>MyBay - Edit Item</title>
    </head>
    <body>
        <form action="EditItem">
            <h1>Edit Item</h1><br><br>
            Item name:
            <input type="text" name = "name"><br><br>
            Category:
            <input type="text" name = "category"><br><br>
            Country of Origin:
            <input type="text" name = "country"><br><br>
            Price(€):
            <input type="text" name = "price"><br><br>
            <input type="submit" value="Edit">
            
            <div style="position:absolute;top:10px;right:10px" >
                <a href="InitialMenu.jsp"><button> Logout </button></a><br><br>
            </div>
        </form>
    </body>
</html>