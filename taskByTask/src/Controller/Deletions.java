package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ChecklistDAO;
import DAO.TaskDAO;

/**
 * Servlet implementation class Deletions
 */
@WebServlet("/Deletions")
public class Deletions extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deletions() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		String id = request.getParameter("deleteID");
		String title = request.getParameter("title");
		int parseId = Integer.parseInt(id);
		
		TaskDAO tDAO = new TaskDAO();
		   
		ChecklistDAO cDAO = new ChecklistDAO();
		cDAO.dropChecks(parseId);
		
		tDAO.dropTask(parseId);
		
		request.setAttribute("title", title);
			
		request.getRequestDispatcher("/tasks.jsp").forward(request, response);
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
