package br.ufac.sgcm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.ufac.sgcm.model.Especialidade;

public class EspecialidadeDAO implements IDao<Especialidade> {

    private Connection conexao;     // vai receber a conexao da classe ConexaoDB
    private PreparedStatement query;      //query = ps =>  monta a query SQL
    private ResultSet cursor;      // cursor = rs => cursor do banco, inicia no zero
    
    public EspecialidadeDAO() {
        conexao = ConexaoDB.getConexao();
    }

    @Override
    public List<Especialidade> get() {
        List<Especialidade> registros = new ArrayList<>();
        String sql = "SELECT * FROM Especialidade;";

        try {    
            query = this.conexao.prepareStatement(sql);
            cursor = query.executeQuery();

            while (cursor.next()) {
                Especialidade registro = new Especialidade();
                registro.setId(cursor.getLong("id"));
                registro.setNome(cursor.getString("nome"));
                registros.add(registro);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return registros;
    }

    @Override
    public Especialidade get(Long id) {
        return null;
    }


    @Override
    public int insert() {
        return 0;
    }


    @Override
    public int update() {
        return 0;
    }

    @Override
    public int delete() {
        return 0;
    }
}
