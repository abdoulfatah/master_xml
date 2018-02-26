//
// Ce fichier a été généré par l'implémentation de référence JavaTM Architecture for XML Binding (JAXB), v2.2.8-b130911.1802 
// Voir <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Toute modification apportée à ce fichier sera perdue lors de la recompilation du schéma source. 
// Généré le : 2018.02.13 à 04:12:29 PM CET 
//


package java1;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "intervenants",
    "enseignements",
    "parcours",
    "semestres",
    "blocks"
})
@XmlRootElement(name = "master")
public class Master {

    @XmlElement(required = true)
    protected Intervenants intervenants;
    @XmlElement(required = true)
    protected Enseignements enseignements;
    @XmlElement(required = true)
    protected Parcours parcours;
    @XmlElement(required = true)
    protected Semestres semestres;
    @XmlElement(required = true)
    protected Blocks blocks;

    /**
     * Obtient la valeur de la propriété intervenants.
     * 
     * @return
     *     possible object is
     *     {@link Intervenants }
     *     
     */
    public Intervenants getIntervenants() {
        return intervenants;
    }

    /**
     * Définit la valeur de la propriété intervenants.
     * 
     * @param value
     *     allowed object is
     *     {@link Intervenants }
     *     
     */
    public void setIntervenants(Intervenants value) {
        this.intervenants = value;
    }

    /**
     * Obtient la valeur de la propriété enseignements.
     * 
     * @return
     *     possible object is
     *     {@link Enseignements }
     *     
     */
    public Enseignements getEnseignements() {
        return enseignements;
    }

    /**
     * Définit la valeur de la propriété enseignements.
     * 
     * @param value
     *     allowed object is
     *     {@link Enseignements }
     *     
     */
    public void setEnseignements(Enseignements value) {
        this.enseignements = value;
    }

    /**
     * Obtient la valeur de la propriété parcours.
     * 
     * @return
     *     possible object is
     *     {@link Parcours }
     *     
     */
    public Parcours getParcours() {
        return parcours;
    }

    /**
     * Définit la valeur de la propriété parcours.
     * 
     * @param value
     *     allowed object is
     *     {@link Parcours }
     *     
     */
    public void setParcours(Parcours value) {
        this.parcours = value;
    }

    /**
     * Obtient la valeur de la propriété semestres.
     * 
     * @return
     *     possible object is
     *     {@link Semestres }
     *     
     */
    public Semestres getSemestres() {
        return semestres;
    }

    /**
     * Définit la valeur de la propriété semestres.
     * 
     * @param value
     *     allowed object is
     *     {@link Semestres }
     *     
     */
    public void setSemestres(Semestres value) {
        this.semestres = value;
    }

    /**
     * Obtient la valeur de la propriété blocks.
     * 
     * @return
     *     possible object is
     *     {@link Blocks }
     *     
     */
    public Blocks getBlocks() {
        return blocks;
    }

    /**
     * Définit la valeur de la propriété blocks.
     * 
     * @param value
     *     allowed object is
     *     {@link Blocks }
     *     
     */
    public void setBlocks(Blocks value) {
        this.blocks = value;
    }

}
