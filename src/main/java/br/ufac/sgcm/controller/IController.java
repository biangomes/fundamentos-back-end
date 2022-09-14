package br.ufac.sgcm.controller;

import java.sql.SQLException;
import java.util.List;

public interface IController<T> {
    
    /*
     * O <T> mencionado acima e abaixo se refere a uma lista de tipo generico.
     * Isso quer dizer que para um tipo Especialidade, o T seria o model Especialidade
     * Para Unidade, o T seria o model Unidade.
     * Assim em diante....
     * 
     * Quando vemos o T get(Long id) quer dizer que o mesmo T que foi atribuido para a lista será atribuído agora
     */
    List<T> get();
    T get(Long id);
    int save(T objeto) throws SQLException;
    int delete(Long id) throws SQLException;
}
