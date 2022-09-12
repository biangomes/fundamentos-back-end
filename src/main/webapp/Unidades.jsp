<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport"
              content="width=device-width, user-scalable=no">
        <meta charset="utf-8">
        <title>SGCM</title>
        <link rel="stylesheet" href="estilo.css">
        <link rel="stylesheet" href="estilo-tema-azul.css" id="link-tema">
        <script src="script.js"></script>
    </head>
    <body>
        <header>
            <div id="logo">
                <img src="imagens/logo.png" alt="Logo SGCM">
                <span id="titulo">SGCM</span>
            </div>
            <div id="usuarioInfo">
                <span>Usuário: Administrador (Admin)</span>
                <span>Papel: ADMIN</span>           
                <select id="tema">
                    <option value="">Escolha um tema</option>
                    <option value="azul">Azul</option>
                    <option value="verde">Verde</option>
                </select>
                <a href="javascript:void(0)" class="botao">Logout</a>
            </div>
        </header>

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
            <div id="comandos">
                <a href="javascript:void(0)"
                   id="add"
                   class="botao">Adicionar</a>
                <div>
                    <form action="">
                        <label for="busca">Busca</label>
                        <input type="text" name="busca" id="busca">
                    </form>
                </div>
            </div>
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
        <footer>
            <span>SGCM - Sistema de Gerenciamento de Clínica Médica</span>
            <span>Suporte Técnico: (68) 5555-5555 | <a href="mailto:suporte.sgcm@ufac.br">suporte.sgcm@ufac.br</a></span>
        </footer>
    </body>
</html>
