package login;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author gilles
 */
import java.sql.Connection;
import java.sql.DriverManager;

// <editor-fold defaultstate="collapsed" desc=" UML Marker "> 
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
// #[regen=yes,id=DCE.29402861-461D-3A9D-A2F0-EBFA60EFB7A4]
// </editor-fold> 

public class MySQLDAOFactory extends DAOFactory {

    private static Connection connexion;
    private static final String DRIVER = "org.gjt.mm.mysql.Driver";
    private static final String URL = "jdbc:mysql://localhost/vin";
    private static final String LOGIN = "root";
    private static final String MDP = "";

    private static void creerConnexion() {
        try {
            Class.forName(DRIVER).newInstance();
            connexion = DriverManager.getConnection(URL, LOGIN, MDP);
            if (connexion == null) {
                System.out.println("Erreur de connexion à la base");
                return;
            }
        } catch (Exception e) {
            System.out.println("Erreur durant la connexion à la base de données");
        }
    }

    private static Connection getConnexion() {
        if (connexion == null) {
            creerConnexion();
        }
        return connexion;
    }

    public GenDAO<Abonne, Integer> getAbonneDAO() {

        return MySQLDAOAbonne.getInstance();
    }

    public static ResultSet requeteSQL(String sql) throws SQLException {
        try {
            Statement stmt = getConnexion().createStatement();
            System.out.println("rq : " + sql);
            ResultSet rs = stmt.executeQuery(sql);

            rs.beforeFirst();
            return rs;
        } catch (Exception e) {
            System.out.println("Erreur durant la requete");
            System.out.println(sql);
            return null;
        }
    }

    public static int insertSQL(String sql, String table) throws SQLException {
        int i;
        Statement stmt = getConnexion().createStatement();
        //if(table!=null)
        //	stmt.executeQuery("LOCK TABLES " + table + " WRITE");
        System.out.println("rq : " + sql);
        stmt.executeUpdate(sql);
        int cle = 0;
        if (table != null) {
            ResultSet rs = stmt.executeQuery("SELECT LAST_INSERT_ID()");
            rs.next();
            cle = rs.getInt(1);
            //stmt.executeQuery("UNLOCK TABLES");
        }
        return cle;
    }

    public static void updateSQL(String sql) throws SQLException {
        int i;
        Statement stmt = getConnexion().createStatement();
        //if(table!=null)
        //	stmt.executeQuery("LOCK TABLES " + table + " WRITE");
        System.out.println("rq : " + sql);
        stmt.executeUpdate(sql);

    }

}
