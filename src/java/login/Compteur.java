package login;

/**
 *
 * @author Maxime BLAISE
 */
public class Compteur {

    /**
     * Valeur du compteur.
     */
    protected int cpt;

    public Compteur() {
        cpt = 1;
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
