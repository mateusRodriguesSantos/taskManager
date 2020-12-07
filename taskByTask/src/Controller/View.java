package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BO.CheckBO;
import Bean.Check;
import Bean.Task;
import DAO.TaskDAO;

/**
 * Servlet implementation class View
 */
@WebServlet("/View")
public class View extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public View() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String title = request.getParameter("title");
			
			String id = request.getParameter("viewID");
			int idParse = Integer.parseInt(id);
			
			
			TaskDAO tDAO = new TaskDAO();
		
			Task t = tDAO.readTask(idParse);
			
			CheckBO cBO = new CheckBO();
			ArrayList<Check> listCheck = cBO.readCheck(t.getIdTask());
			
			request.setAttribute("Task", t);
			request.setAttribute("listCheck", listCheck);
			request.setAttribute("title", title);
			
			request.getRequestDispatcher("/view.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}



}
