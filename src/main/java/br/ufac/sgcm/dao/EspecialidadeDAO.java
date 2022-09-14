package br.ufac.sgcm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.x.protobuf.MysqlxPrepare.Prepare;

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

        /*
         * Metodo que retorna todas as unidades armazenadas
         * no banco de dados
         */
        List<Especialidade> registros = new ArrayList<>();
        String sql = "SELECT * FROM Especialidade;";

        try {    
            query = conexao.prepareStatement(sql);
            cursor = query.executeQuery();

            
            // Garante que o cursor sempre mudará o registro
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
        Especialidade registro = new Especialidade();
        String sql = "SELECT * FROM especialidade WHERE id = ?";        // o parametro eh adicionado na linha 61

        try {
            query = conexao.prepareStatement(sql);
            query.setLong(1, id);
            cursor = query.executeQuery();

            while (cursor.next()) {
                registro.setId(cursor.getLong("id"));
                registro.setNome(cursor.getString("nome"));
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return registro;

    }


    // TODO: continuar amanha dia 14/09
    @Override
    public int insert(Especialidade objeto) throws SQLException {
        int registrosAfetados = 0;
        //Especialidade registro = new Especialidade();
        String sql = "INSERT INTO especialidade " +
                     "(id, nome) " + 
                     "VALUES (?, ?);";
        query = conexao.prepareStatement(sql);
        query.setLong(1, objeto.getId());
        query.setString(2, objeto.getNome());
        registrosAfetados = query.executeUpdate();

        return registrosAfetados;
    }


    @Override
    public int update() {
        int registrosAfetados = 0;
        return 0;
    }

    @Override
    public int delete(Long id) throws SQLException{
        return 0;
    }
}
