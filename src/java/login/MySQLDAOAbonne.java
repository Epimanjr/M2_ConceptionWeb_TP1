package login;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Vector;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author gilles
 */
public class MySQLDAOAbonne implements GenDAO<Abonne, Integer> {

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.1D448687-B702-B5B5-9E98-2BD1AE7A72F0]
    // </editor-fold> 
    private static MySQLDAOAbonne uniqueInstance = null;

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.04F556E7-4A1A-22AA-A372-E01BE92BEB18]
    // </editor-fold> 
    public int insert(Abonne unAbonne) {
        String sql = "insert abonne values (0, " + "'" + unAbonne.getLoginAbonne() + "','" + unAbonne.getMdpAbonne() + "')";
        int cle = 0;
        try {
            cle = MySQLDAOFactory.insertSQL(sql, "abonne");
            System.out.println(sql);
            return cle;
        } catch (SQLException e) {
            System.out.println("\n<--------------------------------------->");
            System.out.println("Erreur lors de la création de abonne : " + e.getMessage());
            System.out.println(sql);
            return -1;
        }
    }

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.C9B71FA6-737D-83E4-FADC-545AF23AF5F9]
    // </editor-fold> 
    public boolean delete(Abonne unAbonne) {
        String sql = new String();
        try {
            sql = "delete from abonne where idAbonne = " + unAbonne.getIdAbonne();
            MySQLDAOFactory.updateSQL(sql);
        } catch (SQLException e) {
            System.out.println("\n<--------------------------------------->");
            System.out.println("Erreur lors de la suppression de abonne : " + e.getMessage());
            System.out.println(sql);
            return false;
        }
        return true;
    }

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.499DA8FB-C09A-0489-0DC0-94534EB62711]
    // </editor-fold> 
    public Abonne find(Integer idAbonne) {
        Abonne unAbonne = new Abonne();
        String sql = "select * from abonne where idAbonne = " + idAbonne;
        try {
            ResultSet rs = MySQLDAOFactory.requeteSQL(sql);
            rs.next();
            unAbonne = this.setAllValues(rs);
        } catch (SQLException e) {
            System.out.println("\n<--------------------------------------->");
            System.out.println("Erreur lors de la recherche d'un abonne : " + e.getMessage());
            System.out.println(sql);
            return null;
        }
        return unAbonne;
    }

    private Abonne setAllValues(ResultSet rs) throws SQLException {
        Abonne unAbonne = new Abonne();
        unAbonne.setIdAbonne(rs.getInt("idAbonne"));
        unAbonne.setLoginAbonne(rs.getString("loginAbonne"));
        unAbonne.setMdpAbonne(rs.getString("mdpAbonne"));
        return unAbonne;
    }

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.4B288BDC-19AD-A0A5-02B4-B5668DDFAB6F]
    // </editor-fold> 
    public boolean update(Abonne unAbonne) {
        String sql = "update abonne set"
                + " loginAbonne ='" + unAbonne.getLoginAbonne() + "', mdpAbonne='" + unAbonne.getMdpAbonne() + "'"
                + " where idAbonne = " + unAbonne.getIdAbonne();
        try {
            MySQLDAOFactory.updateSQL(sql);
        } catch (SQLException e) {
            System.out.println("\n<--------------------------------------->");
            System.out.println("Erreur lors de la mise à jour de abonne : " + e.getMessage());
            System.out.println(sql);
            return false;
        }
        return true;
    }

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.4A12BD27-5601-4EDD-9CE6-28982F89E774]
    // </editor-fold> 
    public Collection<Abonne> select(Abonne unAbonne) {
        ArrayList<Abonne> lesAbonnes = new ArrayList<Abonne>();
        String sql = "Select * FROM abonne where ";
        int critereID = unAbonne.getIdAbonne();
        String critereNom = unAbonne.getLoginAbonne();
        String criterePrenom = unAbonne.getMdpAbonne();
        if (critereID != -1) {
            sql = sql + "idAbonne=" + critereID;
        } else if (critereNom.equals("") && criterePrenom.equals("")) {
            sql = "Select * From abonne";
        } else if (critereNom.equals("")) {
            sql = sql + "mdpAbonne='" + criterePrenom + "'";
        } else if (criterePrenom.equals("")) {
            sql = sql + "loginAbonne='" + critereNom + "'";
        } else {
            sql = sql + "loginAbonne='" + critereNom + "' AND mdpAbonne='" + criterePrenom + "'";
        }
        try {
            ResultSet rs = MySQLDAOFactory.requeteSQL(sql);
            while (rs.next()) {
                Abonne unAbonne2 = new Abonne();
                unAbonne2 = this.setAllValues(rs);
                lesAbonnes.add(unAbonne2);
            }
        } catch (SQLException e) {
            System.out.println("\n<--------------------------------------->");
            System.out.println("Erreur lors de la recherche de abonne : " + e.getMessage());
            System.out.println(sql);
        }

        return lesAbonnes;
    }

    // <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
    // #[regen=yes,id=DCE.25B999FD-2A77-967A-F6EC-BBA21E03732B]
    // </editor-fold> 
    public static MySQLDAOAbonne getInstance() {
        if (MySQLDAOAbonne.uniqueInstance == null) {
            MySQLDAOAbonne.uniqueInstance = new MySQLDAOAbonne();
        }

        return MySQLDAOAbonne.uniqueInstance;

    }

}
