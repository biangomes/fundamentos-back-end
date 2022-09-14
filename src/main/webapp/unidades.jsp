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
                    <input type="text" name="nome" id="nome" required>
                    <label for="cep">Endereço</label>
                    <input type="text" name="endereco" id="endereco">
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
                        <th>Endereço</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="fit">1</td>
                        <td>Bela Vista</td>
                        <td>Rua Independência, 56 - Conjunto Bela Vista</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">2</td>
                        <td>Bosque</td>
                        <td>Rua Paulo VI, 100 - Bosque</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">3</td>
                        <td>Cruzeiro do Sul</td>
                        <td>Rua Rui Barbosa, 252 - Centro</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="4">Total de registros: 3</td>
                    </tr>
                </tfoot>
            </table>
        </main>
        <%@ include file="include/footer.jsp" %>
    </body>
</html>
