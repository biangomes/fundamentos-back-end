/* PADRÃO DE PROJETO SINGLETON */
package br.ufac.sgcm.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.cj.jdbc.JdbcConnection;

public class ConexaoDB {

    private static ConexaoDB instanciaConexao;
    private Connection conexao;

    /** Metodo que gerencia a conexao */
    private ConexaoDB() {

        String url = "jdbc:mysql://localhost/sgcm";
        String usuario = "root";
        String senha = "root";

        try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            conexao = DriverManager.getConnection(url, usuario, senha);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Metodo que fornece a conexao
    public static Connection getConexao() {

        if (instanciaConexao == null) {
            instanciaConexao = new ConexaoDB();
        }
        
        return instanciaConexao.conexao;
        
    }

}
