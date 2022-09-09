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
        PrintWriter writer = resp.getWriter();

        UnidadeDAO unidadeDao = new UnidadeDAO();
        List<Unidade> unidades = new ArrayList<>();
        Unidade unidade = new Unidade();

        if (req.getParameter("id") != null) {
                writer.println(unidade.getId() + " - " + unidade.getNome());
        } else {
            for (Unidade uni: unidades) {
                writer.println(uni.getId() + " - " + uni.getNome() + " - " + uni.getEndereco());
            }
        }

    }
}
