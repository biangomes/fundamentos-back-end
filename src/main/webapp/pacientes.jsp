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
                    <label for="email">E-mail</label>
                    <input type="text" name="email" id="email" required>
                    <label for="telefone">Telefone</label>
                    <input type="text" name="telefone" id="telefone" required>
                    <label for="dataNascimento">Data de nascimento</label>
                    <input type="date" name="dataNascimento" id="dataNascimento" required>
                    <label for="grupoSanguineo">Grupo Sanguíneo</label>
                    <select name="grupoSanguineo" id="grupoSanguineo" required>
                        <option value=""></option>
                        <option value="A+">A+</option>
                        <option value="A-">A-</option>
                        <option value="B+">B+</option>
                        <option value="B-">B-</option>
                        <option value="AB+">AB+</option>
                        <option value="AB-">AB-</option>
                        <option value="O+">O+</option>
                        <option value="O-">O-</option>
                    </select>
                    <label for="sexo">Sexo</label>
                    <select name="sexo" id="sexo">
                        <option value=""></option>
                        <option value="M">Masculino</option>
                        <option value="F">Feminino</option>
                    </select>
                    <label for="cep">CEP</label>
                    <input type="text" name="cep" id="cep" required>
                    <label for="endereco">Endereço</label>
                    <input type="text" name="endereco" id="endereco" required>
                    <label for="estado">Estado</label>
                    <select name="estado" id="estado">
                        <option value="">Selecione</option>
                        <option value="AC">Acre</option>
                        <option value="AL">Alagoas</option>
                        <option value="AP">Amapá</option>
                        <option value="AM">Amazonas</option>
                        <option value="BA">Bahia</option>
                        <option value="CE">Ceará</option>
                        <option value="DF">Distrito Federal</option>
                        <option value="ES">Espirito Santo</option>
                        <option value="GO">Goiás</option>
                        <option value="MA">Maranhão</option>
                        <option value="MS">Mato Grosso do Sul</option>
                        <option value="MT">Mato Grosso</option>
                        <option value="MG">Minas Gerais</option>
                        <option value="PA">Pará</option>
                        <option value="PB">Paraíba</option>
                        <option value="PR">Paraná</option>
                        <option value="PE">Pernambuco</option>
                        <option value="PI">Piauí</option>
                        <option value="RJ">Rio de Janeiro</option>
                        <option value="RN">Rio Grande do Norte</option>
                        <option value="RS">Rio Grande do Sul</option>
                        <option value="RO">Rondônia</option>
                        <option value="RR">Roraima</option>
                        <option value="SC">Santa Catarina</option>
                        <option value="SP">São Paulo</option>
                        <option value="SE">Sergipe</option>
                        <option value="TO">Tocantins</option>
                    </select>
                    <label for="cidade">Cidade</label>
                    <input type="text" name="cidade" id="cidade" required>
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
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Data de nascimento</th>
                        <th>Grupo Sanguíneo</th>
                        <th>Sexo</th>
                        <th>CEP</th>
                        <th>Endereço</th>
                        <th>Estado</th>
                        <th>Cidade</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="fit">1</td>
                        <td>Giulia Farias Bencatel</td>
                        <td>giulia.bencatel@gmail.com</td>
                        <td>(68) 98105-2583</td>
                        <td>1945-09-28</td>
                        <td>AB+</td>
                        <td>F</td>
                        <td>69903-134</td>
                        <td>Rua Cedro, 100 - Parque dos Sabiás</td>
                        <td>AC</td>
                        <td>Rio Branco</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">2</td>
                        <td>Wallace Macedo Inácio Soriano</td>
                        <td>wallace.soriano@yahoo.com</td>
                        <td>(68) 97431-7722</td>
                        <td>1941-04-22</td>
                        <td>B+</td>
                        <td>M</td>
                        <td>69901-884</td>
                        <td>Travessa Mossoró, 90 - Vitória</td>
                        <td>AC</td>
                        <td>Rio Branco</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">3</td>
                        <td>Helen Dutra Vilar</td>
                        <td>helen.vilar@gmail.com</td>
                        <td>(68) 99752-4954</td>
                        <td>1997-06-05</td>
                        <td>AB-</td>
                        <td>F</td>
                        <td>69909-060</td>
                        <td>Rua Adelaide, 50 - Rosa Linda</td>
                        <td>AC</td>
                        <td>Rio Branco</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">4</td>
                        <td>Jean Schuenck Amorin</td>
                        <td>mario.branco@uol.com.br</td>
                        <td>(68) 97120-8079</td>
                        <td>2009-03-10</td>
                        <td>O+</td>
                        <td>M</td>
                        <td>69911-262</td>
                        <td>Rua Luiz Galvez, 200 - Conjunto Castelo Branco</td>
                        <td>AC</td>
                        <td>Rio Branco</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">5</td>
                        <td>Lucilene Santos Lucas</td>
                        <td>lucilene.lucas@gmail.com</td>
                        <td>(68) 99384-3354</td>
                        <td>1974-11-14</td>
                        <td>A+</td>
                        <td>F</td>
                        <td>69980-970</td>
                        <td>Rua Rego Barros, 427 - Centro</td>
                        <td>AC</td>
                        <td>Cruzeiro do Sul</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="12">Total de registros: 5</td>
                    </tr>
                </tfoot>
            </table>
        </main>
        <%@ include file="include/footer.jsp" %>
    </body>
</html>
