<%-- 
    Document   : login
    Created on : 15 Oct, 2023, 1:23:21 PM
    Author     : avinash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
          <%@include file="component/common_css_js.jsp" %>
    </head>
    <body style="background-image: url('img/loginbg.jpg');">
          <%@include file="component/navbar.jsp" %>
          <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-4"  >
                    <div class="card mt-4">
                        
                        <div class="card-header bg-secondary text-white">
                            <h3>Login here</h3>
                        </div>
                        <div class="card-body">
                            
                            <%@include file="component/message.jsp" %>
                            
                            
                            
                            <form action="LoginServlet" method="post" >
                                <div class="mb-3 ">
                                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                                    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input name="password" type="password" class="form-control" id="exampleInputPassword1">
                                 
                                </div>
                                <a href="register.jsp">if not registered Click Here</a>
                                <div class="container text-center">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-primary">Reset</button>
                                </div>
                            </form> 

                            
                            
                        </div>
                        
                        
                        
                        
                    </div>
                    
                </div>    
            </div>
        </div>
        
        
        
    </body>
</html>
