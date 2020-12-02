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

import Bean.Task;
import DAO.TaskDAO;

/**
 * Servlet implementation class ManagerTask
 */
@WebServlet("/ManagerTask")
public class ManagerTask extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerTask() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		String action = request.getParameter("action");
		request.setAttribute("action", action);
		
        request.getRequestDispatcher("/managerTask.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
        String titulo = request.getParameter("titulo");
        String descricao = request.getParameter("descricao");
        String prioridade = request.getParameter("prioridade");
        String status = request.getParameter("status");
        String limite = request.getParameter("limite");
        
      
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); 
        Date dateParse;
		
		dateParse = formatter.parse(limite);
        
        Task t = new Task(titulo, status, Integer.parseInt(prioridade), descricao, dateParse);
		
        TaskDAO tDAO = new TaskDAO();
   
		tDAO.insertTask(t);
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
        
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
