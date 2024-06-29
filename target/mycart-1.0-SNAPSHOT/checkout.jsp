<%-- 
    Document   : checkout
    Created on : 15 Nov, 2023, 8:54:57 PM
    Author     : avinash
--%>

<%
 User user=(User) session.getAttribute("current-user");
   if(user==null)
   {
   session.setAttribute("message", "You are not logged in !! Login to access checkout page");
   response.sendRedirect("login.jsp");
   return;
}


%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Out</title>
         <%@include file="component/common_css_js.jsp" %>
         
    </head>
    <body>
        <%@include file="component/navbar.jsp" %>
        <div class="container">
            
            <div class="row mt-5">
                <div class="col-md-6">
                     <!-- card --> 
                     <div class="card">
                         <div class="card-body">
          <h2 class="text-center mb-4">Your selected item </h2>

                   <div class="cart-body" >
                         
                     </div>
                     </div>
                     </div>     
                     
                     
                     
                </div>
                <div class="col-md-6">
                    <!-- form details --> 
                    <div class="card">
                         <div class="card-body">
          <h2 class="text-center mb-4">Your details for Order </h2>
          <form action="#">
            
              
         <div class="form-group">
    <label for="name">Your Name</label>
    <input value="<%= user.getUserName()  %>" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name">
  </div>
  
    <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input value="<%= user.getUserEmail()%>" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email address">
    <small id="emailHelp" class="form-text text-muted">We'll never share your details with anyone else.</small>
  </div>
    
  <div class="form-group">
    <label for="phone">Phone</label>
    <input value="<%= user.getUserPhone()%>" type="phone" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter contact Number">
  </div>
  
              <div class="form-group">
    <label for="exampleFormControlTextarea1">Your Shipping address</label>
    <textarea value="<%= user.getUserAddress() %>" class="form-control" id="exampleFormControlTextarea1" placeholder="Enter your address" rows="3"></textarea>
  </div>
              <div class="container text-center">
                  <a href="payment.jsp"  <button class="btn btn-outline-success">Order Now</button></a>
                  <a href="index.jsp" <button class="btn btn-outline-primary">Continue Shopping</button></a>
                  
                  
              </div>
              
              
          </form>

                           
                     </div>
                     </div>    
                    
                </div>
                
            </div>
        </div>
        
        
        
         <%@include file="component/common_modals.jsp" %>
    </body>
</html>
