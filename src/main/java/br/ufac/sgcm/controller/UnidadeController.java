package br.ufac.sgcm.controller;

import java.sql.SQLException;
import java.util.List;

import br.ufac.sgcm.dao.UnidadeDAO;
import br.ufac.sgcm.model.Unidade;

public class UnidadeController implements IController<Unidade>{

    private UnidadeDAO dao;

    public UnidadeController() {
        dao = new UnidadeDAO();
    }


    @Override
    public List<Unidade> get() {
        return dao.get();
    }


    @Override
    public Unidade get(Long id) {
        return dao.get(id);
    }


    @Override
    public int save(Unidade objeto) throws SQLException {

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
