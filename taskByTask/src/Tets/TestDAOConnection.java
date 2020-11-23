package Tets;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Connection;

import org.junit.jupiter.api.Test;

import DAO.Connect;

class TestDAOConnection {
	
	Connect con = new Connect();
	
	@Test
	void testGetConnect() {
		
		Connection conect = con.getConexaoMySQL();
		
		assertNotEquals(null, conect);
	}
	
	@Test
	void testFecharConexao() {

		Boolean conect = con.FecharConexao();
		
		assertEquals(true, conect);
	}


}
