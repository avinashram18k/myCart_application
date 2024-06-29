<%@page import="com.mycompany.mycart.entities.User"%>
<%
       User user1=(User) session.getAttribute("current-user");


 %>





<nav class="navbar navbar-expand-lg  navbar-light custom-bg">
   
    <div class="container">
        
        <a class="navbar-brand" href="index.jsp"style="font-size: 30px; color:white">MyCart</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link" href="index.jsp" style="font-size: 20px; color:white">Home <span class="sr-only">(current)</span></a>
      </li>
     <li class="about">
          <a class="nav-link" href="about_us.jsp" style="font-size: 20px; color:white">About us</a>
      </li>
     
     
      
    </ul>
      <ul class="navbar-nav ml-auto">
          
          
          
          <li class="nav-item action">
              <a class="nav-link" href="#!" data-toggle="modal" data-target="#cart"  ><i class="fa fa-cart-plus" style="font-size: 20px; color:#132a13"  > Cart </i> <span class="ml-0 cart-items" style="color: white;" >( 0 )</span> </a>
          </li>
          
          
          
          <%
           if(user1==null)
           {
           
           %>
           
            <li class="nav-item action">
                <a class="nav-link" href="login.jsp"style="font-family: cursive;font-size: 18px; color:#ffd670">Login </a> 
          </li>
           <li class="nav-item action">
               <a class="nav-link" href="register.jsp" style="font-family: cursive; font-size: 18px; color:#ffd670">Register </a> 
          </li>
          
           
           
           <%
          }
          else
          {
         %>

          <li class="nav-item action">
              <a class="nav-link" href="<%= user1.getUserType().equals("admin")? "admin.jsp":"normal.jsp"  %>"><%= user1.getUserName() %> </a> 
          </li>
           <li class="nav-item action">
              <a class="nav-link" href="LogoutSevlet">Logout </a> 
          </li>
          

         <%
          
          }

          %>
          
         
                  
          
          
         
          
      </ul>
      
      
  </div>
</nav>


        
    </div>