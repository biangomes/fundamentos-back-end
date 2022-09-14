package br.ufac.sgcm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.ufac.sgcm.model.Profissional;

public class ProfissionalDAO implements IDao<Profissional> {

    private Connection conexao;
    private PreparedStatement query;
    private ResultSet cursor;
    private EspecialidadeDAO especialidadeDao;
    private UnidadeDAO unidadeDao;
    

    public ProfissionalDAO() {
        conexao = ConexaoDB.getConexao();
        especialidadeDao = new EspecialidadeDAO();
        unidadeDao = new UnidadeDAO();
    }

    
    @Override
    public List<Profissional> get() {
        
        List<Profissional> registros = new ArrayList<>();
        String sql = "SELECT * FROM profissional;";

        try {
            query = conexao.prepareStatement(sql);
            cursor = query.executeQuery();

            while (cursor.next()) {
                Profissional registro = new Profissional();
                registro.setId(cursor.getLong("id"));
                registro.setNome(cursor.getString("nome"));
                registro.setEmail(cursor.getString("email"));
                registro.setRegistroConselho(cursor.getString("registro_conselho"));
                registro.setTelefone(cursor.getString("telefone"));
                registro.setEspecialidade(especialidadeDao.get(cursor.getLong("especialidade_id")));
                registro.setUnidade(unidadeDao.get(cursor.getLong("unidade_id")));

                registros.add(registro);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return registros;
    }


    @Override
    public Profissional get(Long id) {
        
        Profissional registro = new Profissional();
        String sql = "SELECT * FROM profissional WHERE id = ?;";

        try {
            query = conexao.prepareStatement(sql);
            query.setLong(1, id);
            cursor = query.executeQuery();

            if (cursor.next()) {
                registro.setId(cursor.getLong("id"));
                registro.setNome(cursor.getString("nome"));
                registro.setEmail(cursor.getString("email"));
                registro.setRegistroConselho(cursor.getString("registro_conselho"));
                registro.setEspecialidade(especialidadeDao.get(cursor.getLong("especialidade_id"))));
                registro.setUnidade(unidadeDao.get(cursor.getLong("unidade_id")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return registro;
    }


    @Override
    public int insert(Profissional objeto) {
        
        int registrosAfetados = 0;
        String sql = "INSERT INTO profissional " +
                     "(id, email, nome, registro_conselho, telefone, especialidade_id, unidade_id) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?);";

        try {
            query = conexao.prepareStatement(sql);
            query.setLong(1, objeto.getId());
            query.setString(2, objeto.getEmail());
            query.setString(3, objeto.getNome());
            query.setLong(4, objeto.getEspecialidade().getId());
            query.setLong(5, objeto.getUnidade().getId());
            registrosAfetados = query.executeUpdate();
        
            
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return registrosAfetados;
    }


    @Override
    public int update(Profissional objeto) {
        return 0;
    }


    @Override
    public int delete(Long id) {
        
        int registrosAfetados = 0;
        String sql = "DELETE FROM profissional WHERE id = ?";
        query = conexao.prepareStatement(sql);
        query.setLong(1, id);
    }
}
