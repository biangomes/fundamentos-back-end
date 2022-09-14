package br.ufac.sgcm.controller;

import java.sql.SQLException;
import java.util.List;

import br.ufac.sgcm.dao.ProfissionalDAO;
import br.ufac.sgcm.model.Profissional;

public class ProfissionalController implements IController<Profissional> {
    
    private ProfissionalDAO dao;

    public ProfissionalController() {
        dao = new ProfissionalDAO();
    }


    @Override
    public List<Profissional> get() {
        return dao.get();
    }

    
    @Override
    public Profissional get(Long id) {
        return dao.get(id);
    }


    /* (non-Javadoc)
     * @see br.ufac.sgcm.controller.IController#save(java.lang.Object)
     */
    @Override
    public int save(Profissional objeto) throws SQLException {

        int registrosAfetados = 0;

        if (objeto.getId() == null) {
            registrosAfetados = dao.insert(objeto);
        } else {
            registrosAfetados = dao.update(objeto);
        }

        return registrosAfetados;
    }
}
