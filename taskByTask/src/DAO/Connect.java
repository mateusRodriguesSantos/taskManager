package DAO;


import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

import Enums.ConnectionEnums;

/**
 * Connect class, manage the connection with database
 *
 * @author Mateus Rodrigues
 * @version 1.0
 * @since 2020-10-10
 */
public class Connect {

    /**
     * Status indicate the status of connection with database
     */
    public ConnectionEnums status;

    // Connection method
    /**
     * This method startes the connection with database
     */
    public java.sql.Connection getConexaoMySQL() {

        Connection connection = null; // atributo do tipo Connection

        try {

            // Carregando o JDBC Driver padr�o

            String driverName = "com.mysql.jdbc.Driver";

            Class.forName(driverName);

            // Configurando a nossa conex�o com um banco de dados//

            String serverName = "localhost"; // caminho do servidor do BD

            String mydatabase = "taskManager"; // nome do seu banco de dados

            String url = "jdbc:mysql://" + serverName + "/" + mydatabase;

            String username = "root"; // nome de um usu�rio de seu BD

            String password = "12345678"; // sua senha de acesso

            connection = DriverManager.getConnection(url, username, password);

            // Testa sua conex�o//

            if (connection != null) {

                status = ConnectionEnums.Conectado;

            } else {

                status = ConnectionEnums.ERRO;

            }
            return connection;

        } catch (ClassNotFoundException e) { // Driver n�o encontrado

            System.out.println("O driver expecificado nao foi encontrado.");

            return null;

        } catch (SQLException e) {

            // N�o conseguindo se conectar ao banco

            System.out.println("Nao foi possivel conectar ao Banco de Dados.");

            return null;

        }

    }

    // Status conection method
    /**
     * This method returns the status of connection
     * 
     * @return status
     */
    public ConnectionEnums statusConection() {
        return status;
    }

    // Stop connection
    /**
     * This method stop the connection
     * 
     * @return boolean if connection closed with success returns true, false if connection closed with error
     */
    public boolean FecharConexao() {

        try {

            this.getConexaoMySQL().close();

            this.status = ConnectionEnums.Desconectado;
            return true;

        } catch (SQLException e) {

            this.status = ConnectionEnums.ERRO;
            return false;

        }
    }

    // Restart connection
    /**
     * This method restart the connection
     * 
     * @return java.sql.Connection the connection
     */
    public java.sql.Connection ReiniciarConexao() {

        FecharConexao();

        return this.getConexaoMySQL();

    }

    // Constructor
    /**
     * The constructor
     */
    public Connect() {

    }

}
