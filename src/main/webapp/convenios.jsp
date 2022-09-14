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
                    <label for="razaoSocial">Razão Social</label>
                    <input type="text" name="razaoSocial" id="razaoSocial" required>
                    <label for="cnpj">CNPJ</label>
                    <input type="text" name="cnpj" id="cnpj" required>
                    <label for="representante">Representante</label>
                    <input type="text" name="representante" id="representante" required>
                    <label for="email">E-mail</label>
                    <input type="text" name="email" id="email" required>
                    <label for="telefone">Telefone</label>
                    <input type="text" name="telefone" id="telefone" required>
                    <label for="ativo">Ativo</label>
                    <input type="checkbox" name="ativo" id="ativo">
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
                        <th>Razão Social</th>
                        <th>CNPJ</th>
                        <th>Representante</th>
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Ativo</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="fit">1</td>
                        <td>Unimed</td>
                        <td>Unimed Rio Branco Cooperativa de Trabalho Médico Ltda.</td>
                        <td>46.560.030/0001-53</td>
                        <td>Thayline Figueredo Vaz</td>
                        <td>contato@unimedriobranco.com.br</td>
                        <td>(68) 3668-1546</td>
                        <td>Sim</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">2</td>
                        <td>Amil</td>
                        <td>AMIL ASSISTENCIA MEDICA INTERNACIONAL S.A.</td>
                        <td>29.309.127/0001-79</td>
                        <td>Davi Faria da Conceição</td>
                        <td>contato@amil.com.br</td>
                        <td>(11) 3279-3035</td>
                        <td>Sim</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">3</td>
                        <td>Bradesco</td>
                        <td>BRADESCO SAUDE S.A.</td>
                        <td>92.693.118/0001-60</td>
                        <td>Leandra Paes dos Anjos</td>
                        <td>contato@bradescosaude.com.br</td>
                        <td>(21) 2503-0787</td>
                        <td>Sim</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="9">Total de registros: 5</td>
                    </tr>
                </tfoot>
            </table>
        </main>
        <%@ include file="include/footer.jsp" %>
    </body>
</html>
