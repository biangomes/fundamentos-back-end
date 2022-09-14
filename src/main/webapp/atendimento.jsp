<!DOCTYPE html>
<html>
    
    <%@ include file="include/head.jsp" %>

    <body>
       <%@ include file="include/header.jsp" %>
        
        <%@ include file="include/nav.jsp" %>

        <main>
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
                        <th>Atendimento</th>
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
                        <td class="centralizado">
                            <a href="javascript:void(0)" class="botao iniciar inativo">Iniciar</a>
                            <a href="javascript:void(0)" class="botao finalizar excluir">Finalizar</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">01/09/2022</td>
                        <td class="fit">14:30</td>
                        <td>Paciente B</td>
                        <td>Profissional B</td>
                        <td>Unidade B</td>
                        <td>Aliança</td>
                        <td class="centralizado">
                            <a href="javascript:void(0)" class="botao iniciar">Iniciar</a>
                            <a href="javascript:void(0)" class="botao finalizar excluir inativo">Finalizar</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">01/09/2022</td>
                        <td class="fit">15:00</td>
                        <td>Paciente C</td>
                        <td>Profissional C</td>
                        <td>Unidade C</td>
                        <td>Unimed</td>
                        <td class="centralizado">
                            <a href="javascript:void(0)" class="botao iniciar">Iniciar</a>
                            <a href="javascript:void(0)" class="botao finalizar excluir inativo">Finalizar</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">01/09/2022</td>
                        <td class="fit">15:30</td>
                        <td>Paciente D</td>
                        <td>Profissional D</td>
                        <td>Unidade D</td>
                        <td></td>
                        <td class="centralizado">
                            <a href="javascript:void(0)" class="botao iniciar">Iniciar</a>
                            <a href="javascript:void(0)" class="botao finalizar excluir inativo">Finalizar</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">01/09/2022</td>
                        <td class="fit">16:00</td>
                        <td>Paciente E</td>
                        <td>Profissional E</td>
                        <td>Unidade E</td>
                        <td></td>
                        <td class="centralizado">
                            <a href="javascript:void(0)" class="botao iniciar">Iniciar</a>
                            <a href="javascript:void(0)" class="botao finalizar excluir inativo">Finalizar</a>
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
