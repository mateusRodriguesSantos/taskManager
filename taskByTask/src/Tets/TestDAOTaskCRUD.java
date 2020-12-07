package Tets;

import DAO.TaskDAO;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import org.junit.jupiter.api.Test;

import Bean.Task;

class TestDAOTaskCRUD {

	@Test
	void testInsert() throws SQLException {
	
		Task t = new Task("Fazer um crochê", "Done", 3, "Usar a agulha que o Isnard me deu", new Date(),"Arroz");
		
		TaskDAO tDao = new TaskDAO();
		
		Boolean result = tDao.insertTask(t);
		
		assertEquals(true,result);
	}

}
