<!DOCTYPE html>
<html>
    <%@ include file="include/head.jsp" %>

    <body>
       <%@ include file="include/header.jsp" %>
        
        <%@ include file="include/nav.jsp" %>

        <main>
            <form action="#" class="inativo">
                <div class="grid">
                    <label for="nomeCompleto">Nome</label>
                    <input type="text" name="nomeCompleto">
                    <label for="nomeUsuario">Usuário</label>
                    <input type="text" name="nomeCompleto" required>
                    <label for="senha">Senha</label>
                    <input type="password" name="senha" required>
                    <label for="ativo">Ativo</label>
                    <input type="checkbox" name="ativo">
                    <label for="papel">Papel</label>
                    <select name="papel" required>
                        <option value=""></option>
                        <option value="ATENDENTE">ATENDENTE</option>
                        <option value="ADMIN">ADMIN</option>
                    </select>
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
                        <th>Usuário</th>
                        <th>Ativo</th>
                        <th>Papel</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="fit">1</td>
                        <td>Administrador</td>
                        <td>admin</td>
                        <td>Sim</td>
                        <td>ADMIN</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">2</td>
                        <td>Daniel</td>
                        <td>daniel</td>
                        <td>Sim</td>
                        <td>ADMIN</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">3</td>
                        <td>Daricélio</td>
                        <td>daricelio</td>
                        <td>Sim</td>
                        <td>USUARIO</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">4</td>
                        <td>Laura</td>
                        <td>laura</td>
                        <td>Sim</td>
                        <td>USUARIO</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">5</td>
                        <td>Paulo</td>
                        <td>paulo</td>
                        <td>Não</td>
                        <td>USUARIO</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir desabilitado">Excluir</a>
                        </td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="6">Total de registros: 5</td>
                    </tr>
                </tfoot>
            </table>
        </main>
        <%@ include file="include/footer.jsp" %>
    </body>
</html>
