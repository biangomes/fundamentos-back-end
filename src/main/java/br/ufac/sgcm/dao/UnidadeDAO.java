package br.ufac.sgcm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.ufac.sgcm.model.Unidade;

public class UnidadeDAO implements IDao<Unidade>{
    private Connection conexao;
    private PreparedStatement query;
    private ResultSet cursor;

    public UnidadeDAO() {
        conexao = ConexaoDB.getConexao();
    }

    @Override
    public List<Unidade> get() {
        
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


        return null;
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
