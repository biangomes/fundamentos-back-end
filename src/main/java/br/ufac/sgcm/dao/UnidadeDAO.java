package br.ufac.sgcm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.ufac.sgcm.model.Unidade;

public class UnidadeDAO implements IDao<Unidade>{
    private Connection conexao;     // vai receber a conexao da classe ConexaoDB
    private PreparedStatement query;        //query = ps =>  monta a query SQL
    private ResultSet cursor;       // cursor = rs => cursor do banco, inicia no zero


    // Sempre que a UnidadeDAO for chamada, ela vai invocar o metodo getConexao da classe ConexaoDB
    // para validar se já existe alguma conexão realizada
    public UnidadeDAO() {
        conexao = ConexaoDB.getConexao();
    }


    @Override
    public List<Unidade> get() {
        /*
         * Metodo que retorna todas as unidades armazenadas
         * no banco de dados
         */
        List<Unidade> registros = new ArrayList<>();
        String sql = "SELECT * FROM unidade;";

        try {
            
            query = conexao.prepareStatement(sql);
            cursor = query.executeQuery();

            while (cursor.next()) {
                Unidade registro = new Unidade();
                registro.setId(cursor.getLong("id"));
                registro.setNome(cursor.getString("nome"));
                registro.setEndereco(cursor.getString("endereco"));
                registros.add(registro);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return registros;
    }

    @Override
    public Unidade get(Long id) {
        
        Unidade registro = new Unidade();
        String sql = "SELECT * FROM unidade WHERE id = ?";

        try {
            query = conexao.prepareStatement(sql);
            query.setLong(1, id);
            cursor = query.executeQuery();

            while (cursor.next()) {
                registro.setId(cursor.getLong("id"));
                registro.setNome(cursor.getString("nome"));
                registro.setEndereco(cursor.getString("endereco"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return registro;
    }

    @Override
    public int insert() {
        return 0;
    }

    @Override
    public int delete() {
        return 0;
    }

    @Override
    public int update() {
        return 0;
    }
}
