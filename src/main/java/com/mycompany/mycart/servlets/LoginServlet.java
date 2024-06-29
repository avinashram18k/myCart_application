/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.mycart.servlets;

import com.mycompany.mycart.dao.UserDao;
import com.mycompany.mycart.entities.User;
import com.mycompany.mycart.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author avinash
 */
public class LoginServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
            
      String email =request.getParameter("email");
      String password=request.getParameter("password");
     
      //authenticating user
    UserDao userDao= new UserDao(FactoryProvider.getFactory());
   User user=userDao.getUserByEmailAndPassword(email, password);
 //  System.out.print(user);
 
      HttpSession httpSession=request.getSession();
   
   if(user==null)
   {
       httpSession.setAttribute("message","Invalid Details !! Check your details");
       response.sendRedirect("login.jsp");
       return;
       
       
       
       
   }
   else
   {
              out.println("<h1>Welcome "+user.getUserName()+" </h1>");
              
              //login
              httpSession.setAttribute("current-user", user);
              //admin user
              if (user.getUserType().equals("admin"))
              {
                  response.sendRedirect("admin.jsp");
              }
              //normal user
              else if(user.getUserType().equals("normal"))
              {
                  response.sendRedirect("index.jsp");
              }
              else
              {
                  out.println("we have not identified user type");
              }
              
              
              
              
              

   }
      
      
            
            
            
            
            
            
            
                    }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
