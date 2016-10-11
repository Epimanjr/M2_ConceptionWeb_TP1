/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.util.ArrayList;

/**
 *
 * @author Maxime BLAISE
 */
public class Annuaire {
    
    /**
     * Liste des abonnés.
     */
    public final ArrayList<Abonne> listAbonnes;

    public Annuaire() {
        this.listAbonnes = new ArrayList<>();
    }
    
    public void add(Abonne unAbon) {
        if(!listAbonnes.contains(unAbon)) {
            listAbonnes.add(unAbon);
        }
    }

    public ArrayList<Abonne> getListAbonnes() {
        return listAbonnes;
    }
    
    
}
