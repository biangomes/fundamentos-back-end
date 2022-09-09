package br.ufac.sgcm;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import br.ufac.sgcm.dao.EspecialidadeDAO;
import br.ufac.sgcm.model.Especialidade;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class PrimeiroServlet extends HttpServlet {
    
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter saida = resp.getWriter();
        // saida.println("<html>");
        // saida.println("<head>");
        // saida.println("<title>Aula 01/09/2022</title>");
        // saida.println("</head>");
        // saida.println("<body>");
        // saida.println("<h1>Exemplo de servlet</h1>");
        // saida.println("</body>");
        // saida.println("</html>");

        EspecialidadeDAO dao = new EspecialidadeDAO();
        List<Especialidade> especialidadeList = dao.get();


        // Se for passado um parametro na URL
        if (req.getParameter("id") != null) {
            Especialidade especialidadeId = dao.get(Long.parseLong(req.getParameter("id")));
            saida.println(especialidadeId.getId() + " - " + especialidadeId.getNome());
        } else {
            for (Especialidade e: especialidadeList) {
                saida.println(e.getId() + " - " + e.getNome());
            }
        }

    }
}
