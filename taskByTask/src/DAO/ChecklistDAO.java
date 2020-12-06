package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Bean.Check;
import Bean.Task;

public class ChecklistDAO {

	  // Insert Check
    /**
     * This method registry an checklist in data base
     * 
     * @param newCheck this first paramenter for insert a check in data base
     * @return boolean that indicates status of the operation - true or false
     * @throws SQLException
     */
    public boolean insertCheck(Check newChecklist,int idReferenceTask) throws SQLException {
        boolean result = false;
        // Create connection
        Connect con = new Connect();
        java.sql.Connection session = con.getConexaoMySQL();

        // SQL
        String sql = "INSERT INTO Task (name,Task_idTask) VALUES (?, ?)";
        PreparedStatement statement = session.prepareStatement(sql);

        // Insert attributes
        statement.setString(1, newChecklist.getName());
        statement.setString(2,""+idReferenceTask);
      
     
        // Execute SQL
        int rowsInserted = statement.executeUpdate();
        if (rowsInserted > 0) {
            System.out.println("A new user was inserted successfully!"+rowsInserted);
            result = true;
        }

        con.FecharConexao();
        return result;
    }

      // Read Check
    /**
     * This method read all itemChecklist in data base
     * 
     * @return ArrayList<Check> list of Check objects
     * @throws SQLException
     */
    public ArrayList<Check> readCheck() throws SQLException {
        // Create connection
        Connect con = new Connect();
        java.sql.Connection session = con.getConexaoMySQL();

        String sql = "SELECT * FROM ItemChecklist";

        Statement statement = session.createStatement();
        ResultSet result = statement.executeQuery(sql);

        ArrayList<Check> lista = new ArrayList<Check>();
  
        int count = 0;

        while (result.next()) {
            Check c = new Check(result.getInt(1), result.getString(2), result.getInt(3));
            lista.add(c);
            count = count + 1;
        }

        con.FecharConexao();

        return lista;
    }

    // Read Check
    /**
     * This method read an Check in data base
     * 
     * @return TaskBean object
     * @throws SQLException
     */
    public ArrayList<Check> readCheck(int idTask) throws SQLException {
    	Check c = null;
        // Create connection
        Connect con = new Connect();
        java.sql.Connection session = con.getConexaoMySQL();
        
        ArrayList<Check> lista = new ArrayList<Check>();

        String sql = "SELECT * FROM ItemChecklist WHERE Task_idTask = ?";

        
        PreparedStatement statement = session.prepareStatement(sql);

        // Insert attributes
        statement.setString(1,""+idTask);
        ResultSet result = statement.executeQuery();

        
        while (result.next()) {
        	c = new Check(result.getInt(1), result.getString(2), result.getInt(3));
        	lista.add(c);
        }

        con.FecharConexao();

        return lista;
    }
    
    // Read Check
    /**
     * This method drop all check of a Task
     * 
     * @return TaskBean object
     * @throws SQLException
     */
    public void dropChecks(int idTask) throws SQLException {
    	Check c = null;
        // Create connection
        Connect con = new Connect();
        java.sql.Connection session = con.getConexaoMySQL();
        
        ArrayList<Check> lista = new ArrayList<Check>();

        String sql = "SELECT * FROM ItemChecklist WHERE Task_idTask = ?";

        
        PreparedStatement statement = session.prepareStatement(sql);

        // Insert attributes
        statement.setString(1,""+idTask);
        ResultSet result = statement.executeQuery();

        
        while (result.next()) {
        	dropCheck(result.getInt(1));
        }

        con.FecharConexao();

    }

    // Drop Check
    /**
     * This method drop an Check in data base
     * 
     * @return boolean that indicates status of the operation - true or false 
     * @throws SQLException
     */
    public boolean dropCheck(int idCheck) throws SQLException {
        boolean result = false;
        // Create connection
        Connect con = new Connect();
        java.sql.Connection session = con.getConexaoMySQL();

        String sql = "DELETE FROM ItemChecklist WHERE idItem=?";

        PreparedStatement statement = session.prepareStatement(sql);
        statement.setString(1,""+idCheck);

        int rowsDeleted = statement.executeUpdate();
        if (rowsDeleted > 0) {
            System.out.println("A user was deleted successfully!");
            result = true;
        }

        con.FecharConexao();

        return result;
    }
}
