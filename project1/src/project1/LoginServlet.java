package project1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException 
    {
    	try
    	{	    

    		UserBean user = new UserBean();
    		user.setUserName(request.getParameter("lemail"));
    		user.setPassword(request.getParameter("lpass"));

    		user = UserDAO.login(user);
	    
    		if (user.isValid())
    		{
 
    			HttpSession session = request.getSession(true);	    
    			session.setAttribute("currentSessionUname",user.getUsername());
    			response.getWriter().write("employee.jsp"); //logged-in page      		
    		}
 
    		else 
    			response.getWriter().write("invalidLogin.jsp"); //error page 
    	} 


    	catch (Throwable theException) { System.out.println(theException); }
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
