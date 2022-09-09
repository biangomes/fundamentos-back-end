package br.ufac.sgcm;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import br.ufac.sgcm.dao.UnidadeDAO;
import br.ufac.sgcm.model.Unidade;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class UnidadeServlet extends HttpServlet {
    
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter saida = resp.getWriter();

        UnidadeDAO dao = new UnidadeDAO();
        List<Unidade> unidadeList = dao.get();
        

        if (req.getParameter("id") != null) {
            Unidade unidadeId = dao.get(Long.parseLong(req.getParameter("id")));
            saida.println(unidadeId.getId() + " - " + unidadeId.getNome() + " - " + unidadeId.getEndereco());
        } else {
            for (Unidade unidade: unidadeList) {
                saida.println(unidade.getId() + " - " + unidade.getNome() + " - " + unidade.getEndereco());
            }
        }

    }
}
