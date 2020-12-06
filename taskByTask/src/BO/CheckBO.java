package BO;

import java.sql.SQLException;
import java.util.ArrayList;

import Bean.Check;
import Bean.Task;
import DAO.ChecklistDAO;
import DAO.TaskDAO;

public class CheckBO {
	
	public ArrayList<Check> readCheck(int idTask) throws SQLException {
		
		TaskDAO tDAO = new TaskDAO();
		
		Task t = tDAO.readTask(idTask);
		
		ChecklistDAO cDAO = new ChecklistDAO();
		
		ArrayList<Check> lista = cDAO.readCheck(t.getIdTask());
		
		return lista;
	}
	
}
