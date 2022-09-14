<!DOCTYPE html>
<html>

    <%@ include file="include/head.jsp"%>

    <body>

        <%@ include file="include/header.jsp"%>

        <%@ include file="include/nav.jsp"%>

        <main>
            <form action="#" class="inativo">
                <div class="grid">
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" id="nome" required>
                    <label for="registroConselho">Registro</label>
                    <input type="text" name="registroConselho" id="registroConselho">
                    <label for="especialidade">Especialidade</label>
                    <select name="especialidade" id="especialidade" required>
                        <option value=""></option>
                        <option value="1">Especialidade A</option>
                        <option value="2">Especialidade B</option>
                        <option value="3">Especialidade C</option>
                        <option value="4">Especialidade D</option>
                        <option value="5">Especialidade E</option>
                    </select>
                    <label for="unidade">Unidade</label>
                    <select name="unidade" id="unidade">
                        <option value=""></option>
                        <option value="1">Unidade A</option>
                        <option value="2">Unidade B</option>
                        <option value="3">Unidade C</option>
                        <option value="4">Unidade D</option>
                        <option value="5">Unidade E</option>
                    </select>
                    <label for="telefone">Telefone</label>
                    <input type="text" name="telefone" id="telefone">
                    <label for="email">E-mail</label>
                    <input type="text" name="email" id="email">
                </div>
                <input type="button" value="Cancelar">
                <input type="submit" value="Salvar">
            </form>
            <a href="javascript:void(0)"
               id="load" class="botao">Carregar dados</a>
            <%@ include file="include/comandos.jsp"%>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Registro</th>
                        <th>Especialidade</th>
                        <th>Unidade</th>
                        <th>Telefone</th>
                        <th>E-mail</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="fit">1</td>
                        <td>Maria Adelia Serravalle Bezerra</td>
                        <td>CRM/AC 377</td>
                        <td>Cardiologia</td>
                        <td>Unidade A</td>
                        <td>(68) 98205-4704</td>
                        <td>monique.nespoli@uol.com.br</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">2</td>
                        <td>Elielson Silveira Andrade</td>
                        <td>CRM/AC 455</td>
                        <td>Cardiologia</td>
                        <td>Unidade B</td>
                        <td>(68) 98085-4910</td>
                        <td>elielson.andrade@gmail.com</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">3</td>
                        <td>Davi Jesus Mendes2</td>
                        <td>CRM/AC 123</td>
                        <td>Infectologia</td>
                        <td>Unidade C</td>
                        <td>(68) 98408-5352</td>
                        <td>davi.mendes@yahoo.com</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">4</td>
                        <td>Carla da Paixão Valle</td>
                        <td>CRM/AC 234</td>
                        <td>Dermatologia</td>
                        <td>Unidade A</td>
                        <td>(68) 98395-5604</td>
                        <td>carla.valle@gmail.com</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">5</td>
                        <td>Neuza Biango Nobrega</td>
                        <td>CRM/AC 232</td>
                        <td>Pediatria</td>
                        <td>Unidade B</td>
                        <td>(68) 98561-6622</td>
                        <td>neuza.nobrega@uol.com.br</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="8">Total de registros: 5</td>
                    </tr>
                </tfoot>
            </table>
        </main>

    <%@ include file="include/footer.jsp"%>
    </body>
</html>
