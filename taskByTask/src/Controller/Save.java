package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Check;
import Bean.Task;
import DAO.ChecklistDAO;
import DAO.TaskDAO;

/**
 * Servlet implementation class Save
 */
@WebServlet("/Save")
public class Save extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Save() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			//Get Data
			String idTask = request.getParameter("idTask");
			String title = request.getParameter("title");
			String description = request.getParameter("description");
			String date = request.getParameter("date");
			String status = request.getParameter("status");
			String priority = request.getParameter("priority");
			String[] list = request.getParameterValues("list");
			
			//Parses
			int idTaskParse = Integer.parseInt(idTask);
			
		    int priorityParse = Integer.parseInt(priority);
		    
	        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); 
	        Date dateParse;
			
		
			dateParse = formatter.parse(date);
			
			Task t = new Task(title, status, priorityParse, description, dateParse,"title");
			
			//Persistence
			
			TaskDAO tDAO = new TaskDAO();
			tDAO.updateTask(idTaskParse, t);
			
			ChecklistDAO cDAO = new ChecklistDAO();
			cDAO.dropChecks(idTaskParse);
			
			if(list.length != 0) {
				for (String name : list) {
					Check c = new  Check(name, idTaskParse);
					cDAO.insertCheck(c, idTaskParse);
				}
			}
			
			request.setAttribute("title", title);
			request.getRequestDispatcher("/tasks.jsp").forward(request, response);
		} catch (ParseException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
