package br.ufac.sgcm.controller;

import java.sql.SQLException;
import java.util.List;

import br.ufac.sgcm.dao.EspecialidadeDAO;
import br.ufac.sgcm.model.Especialidade;

public class EspecialidadeController implements IController<Especialidade> {

    private EspecialidadeDAO dao;

    // construtor padrão que instanciará o objeto de acesso aos dados (dao)
    public EspecialidadeController() {
        dao = new EspecialidadeDAO();
    }

    // Implementação dos métodos da interface IController
    @Override
    public List<Especialidade> get() {
        return dao.get();
    }


    @Override
    public Especialidade get(Long id) {
        return dao.get(id);
    }

    // O método retornará um inteiro que se refere a quantidade de registros afetados
    @Override
    public int save(Especialidade objeto) throws SQLException{
        int registrosAfetados = 0;

        if (objeto.getId() == null) {
            registrosAfetados = dao.insert(objeto);
        } else {
            registrosAfetados = dao.update(objeto);
        }

        return registrosAfetados;
    }

    @Override
    public int delete(Long id) throws SQLException {
        return dao.delete(id);
    }
}
