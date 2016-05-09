package com.ub.order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Hashtable;
import java.util.Map;

@WebServlet(
        name = "loginServlet",
        urlPatterns = "/login"
)
public class LoginServlet extends HttpServlet
{
	ConnectionHelper db=new ConnectionHelper();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
    	
        HttpSession session = request.getSession();
       if(session.getAttribute("userEmail") != null)
        {
        	request.getRequestDispatcher("/WEB-INF/jsp/control.jsp")
            .forward(request, response);
            return;
        }

        request.getRequestDispatcher("login.jsp")
        .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        HttpSession session = request.getSession();
//        if(session.getAttribute("userEmail") != null)
//        {
//        	request.getRequestDispatcher("/WEB-INF/jsp/control.jsp")
//            .forward(request, response);
//            return;
//         
//        }

        String userEmail = request.getParameter("userEmail");
        String password = request.getParameter("password");
        System.out.println(userEmail);
        if(userEmail == null || password == null || !db.auth(userEmail,password))
        {
            request.setAttribute("loginFailed", true);
            request.getRequestDispatcher("login.jsp")
            .forward(request, response);
        }
        else
        {
            session.setAttribute("userEmail", userEmail);
            request.setAttribute("userEmail", userEmail);
            request.getRequestDispatcher("/WEB-INF/jsp/control.jsp")
            .forward(request, response);
            
        }
    }
}
