package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.Item;
import ejb.ItemsEJBRemote;

@WebServlet("/SearchByPrice")
public class SearchByPrice extends HttpServlet {
 private static final long serialVersionUID = 1L;
 @EJB
 ItemsEJBRemote ejbremote;

 /**
  * @see HttpServlet#HttpServlet()
  */
 public SearchByPrice() {
  super();
 }

 /**
  * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    PrintWriter out = response.getWriter();
    response.setContentType("text/html");

    Float lowestPrice = Float.parseFloat(request.getParameter("lowestPrice"));
    Float highestPrice = Float.parseFloat(request.getParameter("highestPrice"));

    List<Item> items = ejbremote.getItemsByPrice(lowestPrice, highestPrice);
    for (Item item : items) {
        out.println("<a href=" + "MainMenu.jsp" + ">" + item.getName() + "</a><br/>");
    }
 }

 /**
  * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  doGet(request, response);
 }

}