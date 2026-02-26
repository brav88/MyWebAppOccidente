/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package auth.pckg.myapp;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.pckg.myapp.User;

/**
 *
 * @author Personal
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("txtEmail");
        String pwd = request.getParameter("txtPwd");
        
        //TO-DO preguntarle a la BD si existe el usuario
        if(true){
            User user = new User();
            user.setEmail(email);
            user.setName("Pedro");            
            
            HttpSession session = request.getSession();
            session.setAttribute("User", user);
            
            response.sendRedirect("CarsServlet");
        }
        else{
            response.sendRedirect("error.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

