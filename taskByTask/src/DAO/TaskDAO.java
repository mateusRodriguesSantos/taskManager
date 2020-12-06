package DAO;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Bean.Task;

/**
 * CRUD of TaskBean
 *
 * @author Mateus Rodrigues
 * @version 1.0
 * @since 2020-10-12
 */
public class TaskDAO {

    /*
     * private int idTask; private String titulo; private String status; private int
     * prioridade; private String descricao; private Date limite;
     */

    // Insert Task
    /**
     * This method registry an Task in data base
     * 
     * @param newTask this first paramenter for insert Task in data base
     * @return boolean that indicates status of the operation - true or false
     * @throws SQLException
     */
    public boolean insertTask(Task newTask) throws SQLException {
        boolean result = false;
        // Create connection
        Connect con = new Connect();
        java.sql.Connection session = con.getConexaoMySQL();

        // SQL
        String sql = "INSERT INTO Task (titulo,status,prioridade,descricao,limite) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement statement = session.prepareStatement(sql);

        // Insert attributes
        statement.setString(1, newTask.getTitulo());
        statement.setString(2, newTask.getStatus());
        statement.setString(3, "" + newTask.getPrioridade());
        statement.setString(4, newTask.getDescricao());
        
        java.sql.Date sqlDate = new java.sql.Date(newTask.getLimite().getTime());
        
        statement.setDate(5, sqlDate);

        // Execute SQL
        int rowsInserted = statement.executeUpdate();
        if (rowsInserted > 0) {
            System.out.println("A new user was inserted successfully!"+rowsInserted);
            result = true;
        }

        con.FecharConexao();
        return result;
    }

      // Read Task
    /**
     * This method read all imoveis in data base
     * 
     * @return ArrayList<TaskBean> list of TaskBean objects
     * @throws SQLException
     */
    public ArrayList<Task> readTask() throws SQLException {
        // Create connection
        Connect con = new Connect();
        java.sql.Connection session = con.getConexaoMySQL();

        String sql = "SELECT * FROM Task";

        Statement statement = session.createStatement();
        ResultSet result = statement.executeQuery(sql);

        ArrayList<Task> lista = new ArrayList<Task>();
  
        int count = 0;

        while (result.next()) {
            Task Task = new Task(result.getInt(1), result.getString(2), result.getString(3), result.getInt(4), result.getString(5), result.getDate(6));
            lista.add(Task);
            count = count + 1;
        }

        con.FecharConexao();

        return lista;
    }

    // Read Task
    /**
     * This method read an Task in data base
     * 
     * @return TaskBean object
     * @throws SQLException
     */
    public Task readTask(int idTask) throws SQLException {
        Task Task = null;
        // Create connection
        Connect con = new Connect();
        java.sql.Connection session = con.getConexaoMySQL();

        String sql = "SELECT * FROM Task WHERE idTask = ?";

        PreparedStatement statement = session.prepareStatement(sql);

        // Insert attributes
        statement.setString(1,""+idTask);
        ResultSet result = statement.executeQuery();

        while (result.next()) {
            Task = new Task(result.getInt(1), result.getString(2), result.getString(3), result.getInt(4), result.getString(5), result.getDate(6));
        }

        con.FecharConexao();

        return Task;
    }
    
     // Update Task
    /**
     * This method update an Task in data base
     * 
     * @param idTask  this first paramenter for update Task in data base
     * @param newTask this second paramenter for update Task in data
     * @return boolean that indicates status of the operation - true or false
     * @throws SQLException
     */
    public boolean updateTask(int idTask, Task newTask) throws SQLException {
        boolean result = false;
        // Create connection
        Connect con = new Connect();
        java.sql.Connection session = con.getConexaoMySQL();
        
        String sql = "UPDATE Task SET titulo=?, status=?, prioridade=?, descricao=?, limite=? WHERE idTask=? ";

        PreparedStatement statement = session.prepareStatement(sql);
        statement.setString(1,newTask.getTitulo());
        statement.setString(2,newTask.getStatus());
        statement.setString(3,""+newTask.getPrioridade());
        statement.setString(4,""+newTask.getDescricao()); 
        
        java.sql.Date sqlDate = new java.sql.Date(newTask.getLimite().getTime());
        
        statement.setDate(5, sqlDate);
        
        statement.setString(6,""+idTask);

        int rowsUpdated = statement.executeUpdate();
        if (rowsUpdated > 0) {
            System.out.println("An existing Task was updated successfully!");
            result = true;
        }
        con.FecharConexao();
        return result;
    }

    // Drop Task
    /**
     * This method drop an Task in data base
     * 
     * @return boolean that indicates status of the operation - true or false 
     * @throws SQLException
     */
    public boolean dropTask(int idTask) throws SQLException {
        boolean result = false;
        // Create connection
        Connect con = new Connect();
        java.sql.Connection session = con.getConexaoMySQL();

        String sql = "DELETE FROM Task WHERE idTask=?";

        PreparedStatement statement = session.prepareStatement(sql);
        statement.setString(1,""+idTask);

        int rowsDeleted = statement.executeUpdate();
        if (rowsDeleted > 0) {
            System.out.println("A user was deleted successfully!");
            result = true;
        }

        con.FecharConexao();

        return result;
    }
}
