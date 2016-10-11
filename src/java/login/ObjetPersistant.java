/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.sql.Connection;

/**
 *
 * @author gilles
 */
public interface ObjetPersistant {

    public abstract void save(Connection con);

    public abstract void load(Connection con);

    public abstract boolean exist(Connection con);

}
