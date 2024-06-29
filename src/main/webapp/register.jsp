<%-- 
    Document   : register
    Created on : 1 Oct, 2023, 7:56:53 PM
    Author     : avinash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
         <%@include file="component/common_css_js.jsp" %>
    </head>
    <body style="background-image: url('img/bg02.jpg');"media="(max-width: 400px)">
                <%@include file="component/navbar.jsp" %>
                <div class="container-fluid">
                     <div class="row mt-5">
                    <div class="col-md-4 offset-md-4">
                        
                        
                        <div class="card">
                            <%@include file="component/message.jsp" %>
                            
                            <div class="card-body px-5">
                                
                             
                                <div class="container text-center" >                 
         <img src="img/sign-up6.png " width="150" height="140" alt="alt"/>
                                </div>
             <h3 class="text-center  ">Sign up here</h3>
                                
                                
             <form action="RegisterServlet" method="post">
                           <div class="form-group">
    <label for="name">User Name</label>
    <input name="user_name" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter Name">
  </div>  
           <div class="form-group">
    <label for="email">User Email</label>
    <input name="user_email" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
  </div>     
                            
           <div class="form-group">
    <label for="password">Password</label>
    <input name="user_password" type="password" class="form-control" id="password" aria-describedby="emailHelp" placeholder="Enter Password">
  </div>    
                            
            <div class="form-group">
    <label for="phone">Phone</label>
    <input name="user_phone" type="number" class="form-control" id="phone" aria-describedby="emailHelp" placeholder="Enter Phone Number">
  </div>    
                            
      <div class="form-group">
    <label for="address">Address</label>
    <textarea name="user_address" class="form-control" placeholder="Enter Your Address"></textarea>
  </div>        
                            
                            <div class="container text-center">
                                <button class="btn btn-outline-success">Register</button>
                              <button class="btn btn-outline-warning">Reset</button>

                                
                            </div>                  
                            
                            
                        </form>

                                
                                
                                
                                
                            </div>
                        </div>                        
                        
                        
                    </div>
                </div>
                </div>
               
    </body>
</html>
