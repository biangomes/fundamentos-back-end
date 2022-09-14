<!DOCTYPE html>
<html>
    
    <%@ include file="include/head.jsp" %>
    
    <body>
        <%@ include file="include/header.jsp" %>
        <%@ include file="include/nav.jsp" %>
        <main>
            <form action="#" class="inativo">
                <div class="grid">
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" id="nome">
                </div>
                <input type="button" value="Cancelar">
                <input type="submit" value="Salvar">
            </form>
            <%@ include file="include/comandos.jsp" %>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="fit">1</td>
                        <td>Oncologia</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">2</td>
                        <td>Geriatria</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">3</td>
                        <td>Dermatologia</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">4</td>
                        <td>Cardiologia</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">5</td>
                        <td>Pediatria</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3">Total de registros: 5</td>
                    </tr>
                </tfoot>
            </table>
        </main>
        <%@ include file="include/footer.jsp" %>
    </body>
</html>
