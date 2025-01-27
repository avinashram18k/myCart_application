<%@page import="java.util.Map"%>
<%@page import="com.mycompany.mycart.helper.Helper"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.mycart.entities.Category"%>
<%@page import="com.mycompany.mycart.helper.FactoryProvider"%>
<%@page import="com.mycompany.mycart.dao.CategoryDao"%>
<%@page import="com.mycompany.mycart.entities.User"%>
<%@page import="com.mycompany.mycart.entities.User"%>
<%
   User user=(User) session.getAttribute("current-user");
   if(user==null)
   {
   session.setAttribute("message", "You are not logged in !!!");
   response.sendRedirect("login.jsp");
   return;
}else
{
if(user.getUserType().equals("normal")){
session.setAttribute("message", "You are not admin !! Do not access this page");
response.sendRedirect("login.jsp");
return;
}
}

%>



              <%
              
              CategoryDao cdao=new CategoryDao(FactoryProvider.getFactory());
              List<Category>list=cdao.getCategories();
              //getting count
              
     Map<String,Long> m =Helper.getCounts(FactoryProvider.getFactory());
              
              %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin</title>
        <%@include file="component/common_css_js.jsp" %>
    </head>
    <body style="background-image: url('img/login.jpg');">
        <%@include file="component/navbar.jsp" %>
        
        
        <div class="container admin">
            
            <div class="container-fluid mt-3">
                <%@include file="component/message.jsp" %>
                
            </div>   
            
            
            
            
            
            <div class="row mt-3">
                 <!-- 1 rd col -->
                <div class="col-md-4">
                    <div class="card text-center">
                        <div class="container">
                            
                            <img style="max-width: 125px;" class="img-fluid rounded-circle" src="img/team.png" alt="User_icon"/>
                        </div>
                        
                        <h1><%= m.get("userCount")%></h1>
                        <h1  class="text-uppercase text-muted">Users</h1>
                        
                    </div>
                    
                    
                    
                </div>
                  <!-- 2rd col -->
                <div class="col-md-4">
                     <div class="card text-center">
                         
                         <div class="container">
                            
                             <img style="max-width: 125px;" class="img-fluid rounded-circle" src="img/list.png" alt="categories_icon"/>
                        </div>
                        
                          <h1><%= list.size() %></h1>
                        <h1 class="text-uppercase text-muted">Categories</h1>
                        
                    </div>
                    
                    
                    
                </div>
                  
                  
                  
                <!-- 3rd col -->
                <div class="col-md-4">
                     <div class="card text-center">
                         
                         <div class="container">
                            
                             <img style="max-width: 125px;" class="img-fluid rounded-circle" src="img/delivery-box.png" alt="Product_icon"/>
                        </div>
                         
                         
                         <h1><%= m.get("productCount")%></h1>
                          <h1 class="text-uppercase text-muted">Product</h1>
                        
                    </div>
                    
                </div>
                
                
                
                
                
            </div>
            
            
            <!-- 2nd row -->
            <div class="row mt-3">
                <div class="col-md-4">
                    <div class="card" data-toggle="modal" data-target="#add-category-modal">
                   <div class="card text-center">
                        <div class="container">
                            
                            <img style="max-width: 125px;" class="img-fluid rounded-circle" src="img/categories.png" alt="Add_Category"/>
                        </div>
                        
                       <p class="mt-2">Click here to add new Category</p>
                        <h1  class="text-uppercase text-muted">Add Category</h1>
                        
                    </div>  
                    
                    </div>
                </div>
                
                <div class="col-md-4">
                <div class="card" data-toggle="modal" data-target="#add-product-modal">       
                   <div class="card text-center">
                        <div class="container">
                            <img style="max-width: 125px;" class="img-fluid rounded-circle" src="img/plus.png" alt="Product_icon"/>
                        </div>
                        
                        <p class="mt-2">Click here to add new Product</p>
                        <h1  class="text-uppercase text-muted">Add Product</h1>
                        
                    </div>  
                   </div>
                    
                </div>
                
                
                
                
                
                
                
            </div>
            
        </div>
        
        
        
        
        
        
        
        <!-- add Category modal -->  
        
        
        <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill Category Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        
      <div class="modal-body">
          
          <form action="ProductOperationServlet" method="post" >
              
          
              <input type="hidden" name="operation" value="addcategory">
              
              <div class="form-group">
                  <input type="text" class="form-control" name="catTitle" placeholder="Enter Category title" required />
              </div>
             
              <div class="form-group">
                  <textarea  style="height:200px;"class="form-control" placeholder="Enter Category Description" name="catDescription" required ></textarea>  
              </div>
              
              <div class="container text-center">
                  <button class="btn btn-outline-success">Add Category</button>
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

              </div> 
              
              
              
              
          </form>
              
              
         
   
           
              
          
          
      </div>
     
    </div>
  </div>
</div>
        
        <!-- End Category modal --> 
        <!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->        
        <!-- add Product modal --> 
        
        
       <div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill Product Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        
      <div class="modal-body">
          
          
              
              <form action="ProductOperationServlet" method="post" enctype="multipart/form-data">
              
              <input type="hidden" name="operation" value="addproduct" />
              
              <div class="form-group">
                  <input type="text" class="form-control" name="pName" placeholder="Enter Product Name" required />
              </div>
             
              <div class="form-group">
                  <textarea  style="height:150px;"class="form-control" placeholder="Enter Product Description" name="pDesc" required ></textarea>  
              </div>
              
              <div class="form-group">
                  <input type="number" class="form-control" name="pPrice" placeholder="Enter Product Price" required />  
                  
              </div>
               <div class="form-group">
                  <input type="number" class="form-control" name="pDiscount" placeholder="Enter Product Discount" required />  
                  
              </div>
              
               <div class="form-group">
                  <input type="number" class="form-control" name="pQuantity" placeholder="Enter Product Quantity" required />  
                  
              </div>
              
              
              <!-- Product Category -->
              
             
              
               <div class="form-group">
               
                   <select name="catId" class="form-control" id="">
                       
                       <%
                       for(Category c:list){
                       %>
                         <option value="<%=c.getCategoryId() %>"> <%=c.getCategoryTitle() %></option> 
                       
                           
                       
                       <% } %>
                       
                       
                       
                       
                     
                      


                       
                   </select>      
                   
                   
              </div>

              <!-- Product file -->
              
              <div class="form-group">
                  <label for="">Select Picture of Product</label>
                  <br>
                  <input type="file" id="pPic" name="pPic" required />  
              </div>
              
              <!-- submit button -->
              
            
              
              <div class="container text-center">
                  <button class="btn btn-outline-success">Add Product</button>
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

              </div> 
              
                            
              
              
              
          </form>
              
              
         
   
           
              
          
          
      </div>
     
    </div>
  </div>
</div>
       
        
        
        
        <!-- End product modal --> 
        
        <%@include file="component/common_modals.jsp" %>  
    </body>
</html>
