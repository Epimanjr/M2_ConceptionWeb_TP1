/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.io.Serializable;

/**
 *
 * @author gilles
 */
public abstract class DAOFactory {

    public static final int MYSQL = 1;

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.3F32D53A-1A62-E3F9-9433-A427DABA5F8B]
    // </editor-fold> 
    public abstract GenDAO<Abonne,Integer> getAbonneDAO ();

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.B4A3E37F-7C8C-F8B3-A8FC-90B8CB68487D]
    // </editor-fold> 
    public static DAOFactory getDAOFactory (int whichFactory) {
    switch (whichFactory) {
        case MYSQL : return new MySQLDAOFactory();
        default : return null;
    }
    }

}

