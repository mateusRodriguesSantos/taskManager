package Tets;

import DAO.TaskDAO;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.jupiter.api.Test;

import Bean.Task;

class TestDAOTaskCRUD {

	@Test
	void testRead() throws SQLException {
		TaskDAO tDAO = new TaskDAO();
		
		ArrayList<Task> list = tDAO.readTask();
		
		
		assertNotEquals(null, list);
	}

}
