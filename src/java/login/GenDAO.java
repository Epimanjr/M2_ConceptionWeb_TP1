/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.io.Serializable;
import java.util.Collection;

/**
 *
 * @author gilles
 * @param <T>
 * @param <PK>
 */
public interface GenDAO <T , PK> {

  
    public int insert (T unT);

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.991E074E-49FA-CADD-8310-9301084AB0EC]
    // </editor-fold> 
    public boolean delete (T unT);

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.C150FC99-6DE6-2C9D-56F1-4E04F56A96FF]
    // </editor-fold> 
    public T find (PK idT);

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.AA8DF1B9-AB23-67E9-7D72-7BBB5DFCD10B]
    // </editor-fold> 
    public boolean update (T unT);

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.0895DBBB-6A4C-9D45-424F-EC519300AA24]
    // </editor-fold> 
    public Collection<T> select (T unT);

}
