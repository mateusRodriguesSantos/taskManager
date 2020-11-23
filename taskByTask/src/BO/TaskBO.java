package BO;

import java.sql.SQLException;
import java.util.ArrayList;

import Bean.Task;
import DAO.TaskDAO;

public class TaskBO {
    public ArrayList<Task> getAllTasks() throws SQLException {
        ArrayList<Task> list = new ArrayList<Task>();
			
			TaskDAO t = new TaskDAO();
			
            list = t.readTask();
            
        return list;
    }
}
