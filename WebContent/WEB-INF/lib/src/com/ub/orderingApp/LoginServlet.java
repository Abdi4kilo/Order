package com.ub.orderingApp;

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
    private static final Map<String, String> userDatabase = new Hashtable<>();

    static {
        userDatabase.put("admin@gmail.com", "admin");
       
    }
    


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
    	
        HttpSession session = request.getSession();
        if(request.getParameter("logout") != null)
        {
            session.invalidate();
            response.sendRedirect("login");
            return;
        }
        else if(session.getAttribute("userEmail") != null)
        {
        	request.getRequestDispatcher("/WEB-INF/jsp/control.jsp")
            .forward(request, response);
            return;
        }

        request.getRequestDispatcher("/WEB-INF/jsp/control.jsp")
        .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        if(session.getAttribute("username") != null)
        {
        	request.getRequestDispatcher("/WEB-INF/jsp/control.jsp")
            .forward(request, response);
            return;
         
        }

        String userEmail = request.getParameter("userEmail");
        String password = request.getParameter("password");
        if(userEmail == null || password == null ||
                !LoginServlet.userDatabase.containsKey(userEmail) ||
                !password.equals(LoginServlet.userDatabase.get(userEmail)))
        {
            request.setAttribute("loginFailed", true);
            request.getRequestDispatcher("login.jsp")
            .forward(request, response);
        }
        else
        {
            session.setAttribute("userEmail", userEmail);
            request.setAttribute("userEmail", userEmail);
            request.changeSessionId();
            request.getRequestDispatcher("/WEB-INF/jsp/control.jsp")
            .forward(request, response);
            
        }
    }
}
