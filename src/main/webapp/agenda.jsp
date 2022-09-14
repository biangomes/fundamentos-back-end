<!DOCTYPE html>
<html>
    
    <%@ include file="include/head.jsp" %>

    <body>
        <%@ include file="include/header.jsp" %>
        <%@ include file="include/nav.jsp" %>
        <main>
            <form action="#" class="inativo">
                <div class="grid">
                    <label for="unidade">Unidade</label>
                    <select name="unidade" id="unidade" required>
                        <option value="">Selecione</option>
                        <option value="1">Unidade A</option>
                        <option value="2">Unidade B</option>
                        <option value="3">Unidade C</option>
                        <option value="4">Unidade D</option>
                        <option value="5">Unidade E</option>
                    </select>
                    <label for="profissional">Profissional</label>
                    <select name="profissional" id="profissional" required>
                        <option value="">Selecione</option>
                        <option value="1">Profissional A</option>
                        <option value="2">Profissional B</option>
                        <option value="3">Profissional C</option>
                        <option value="4">Profissional D</option>
                        <option value="5">Profissional E</option>
                    </select>
                    <label for="data">Data</label>
                    <input type="date" name="data" id="data" required>
                    <label for="hora">Hora</label>
                    <select name="hora" id="hora" required>
                        <option value="">Selecione</option>
                        <option value="14:00">14:00</option>
                        <option value="14:30">14:30</option>
                        <option value="15:00">15:00</option>
                        <option value="15:30">15:30</option>
                        <option value="16:00">16:00</option>
                        <option value="16:30">16:30</option>
                        <option value="17:00" disabled>17:00</option>
                        <option value="17:30">17:30</option>
                        <option value="18:00">18:00</option>
                        <option value="18:30">18:30</option>
                        <option value="19:00">19:00</option>
                        <option value="19:30">19:30</option>
                        <option value="20:00">20:00</option>
                    </select>
                    <label for="convenio">Convênio</label>
                    <select name="convenio" id="convenio" required>
                        <option value="">Selecione</option>
                        <option value="1">Convênio A</option>
                        <option value="2">Convênio B</option>
                        <option value="3">Convênio C</option>
                        <option value="4">Convênio D</option>
                        <option value="5">Convênio E</option>
                    </select>
                    <label for="paciente">Paciente</label>
                    <select name="paciente" id="paciente" required>
                        <option value="">Selecione</option>
                        <option value="1">Paciente A</option>
                        <option value="2">Paciente B</option>
                        <option value="3">Paciente C</option>
                        <option value="4">Paciente D</option>
                        <option value="5">Paciente E</option>
                    </select>
                </div>
                <input type="button" value="Cancelar">
                <input type="submit" value="Salvar">
            </form>
            <%@ include file="include/comandos.jsp" %>
            <table>
                <thead>
                    <tr>
                        <th>Data</th>
                        <th>Hora</th>
                        <th>Paciente</th>
                        <th>Profissional</th>
                        <th>Unidade</th>
                        <th>Convênio</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="fit">01/09/2022</td>
                        <td class="fit">14:00</td>
                        <td>Paciente A</td>
                        <td>Profissional A</td>
                        <td>Unidade A</td>
                        <td>Unimed</td>
                        <td>
                            <a href="javascript:void(0)" class="botao chegada inativo">Chegada</a>
                            <a href="javascript:void(0)" class="botao confirmacao">Confirmar</a>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Cancelar</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">01/09/2022</td>
                        <td class="fit">14:30</td>
                        <td>Paciente B</td>
                        <td>Profissional B</td>
                        <td>Unidade B</td>
                        <td>Aliança</td>
                        <td>
                            <a href="javascript:void(0)" class="botao chegada inativo">Chegada</a>
                            <a href="javascript:void(0)" class="botao confirmacao">Confirmar</a>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Cancelar</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">01/09/2022</td>
                        <td class="fit">15:00</td>
                        <td>Paciente C</td>
                        <td>Profissional C</td>
                        <td>Unidade C</td>
                        <td>Unimed</td>
                        <td>
                            <a href="javascript:void(0)" class="botao chegada inativo">Chegada</a>
                            <a href="javascript:void(0)" class="botao confirmacao">Confirmar</a>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Cancelar</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">01/09/2022</td>
                        <td class="fit">15:30</td>
                        <td>Paciente D</td>
                        <td>Profissional D</td>
                        <td>Unidade D</td>
                        <td></td>
                        <td>
                            <a href="javascript:void(0)" class="botao chegada">Chegada</a>
                            <a href="javascript:void(0)" class="botao confirmacao inativo">Confirmar</a>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Cancelar</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">01/09/2022</td>
                        <td class="fit">16:00</td>
                        <td>Paciente E</td>
                        <td>Profissional E</td>
                        <td>Unidade E</td>
                        <td></td>
                        <td>
                            <a href="javascript:void(0)" class="botao chegada inativo">Chegada</a>
                            <a href="javascript:void(0)" class="botao confirmacao">Confirmar</a>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Cancelar</button>
                        </td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="7">Total de registros: 5</td>
                    </tr>
                </tfoot>
            </table>
        </main>
        <%@ include file="include/footer.jsp" %>
    </body>
</html>
