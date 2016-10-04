package login;

/**
 *
 * @author Maxime BLAISE
 */
public class Compteur {

    /**
     * Valeur du compteur.
     */
    public int cpt;

    public Compteur() {
        cpt = 0;
    }

    public int getCpt() {
        return cpt;
    }

    public void setCpt(int cpt) {
        this.cpt = cpt;
    }

    /**
     * Incrémente de 1 le compteur.
     */
    public void incCpt() {
        this.cpt++;
    }
}
