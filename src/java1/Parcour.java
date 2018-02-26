//
// Ce fichier a été généré par l'implémentation de référence JavaTM Architecture for XML Binding (JAXB), v2.2.8-b130911.1802 
// Voir <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Toute modification apportée à ce fichier sera perdue lors de la recompilation du schéma source. 
// Généré le : 2018.02.13 à 04:12:29 PM CET 
//


package java1;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlID;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;


/**
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "responsable",
    "nom",
    "description",
    "refSemestre",
    "debouches"
})
@XmlRootElement(name = "parcour")
public class Parcour {

    @XmlAttribute(name = "id", required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @XmlID
    protected String id;
    protected Responsable responsable;
    @XmlElement(required = true)
    protected String nom;
    protected String description;
    @XmlElement(name = "ref-semestre", required = true)
    protected List<RefSemestre> refSemestre;
    protected List<Debouches> debouches;

    /**
     * Obtient la valeur de la propriété id.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getId() {
        return id;
    }

    /**
     * Définit la valeur de la propriété id.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setId(String value) {
        this.id = value;
    }

    /**
     * Obtient la valeur de la propriété responsable.
     * 
     * @return
     *     possible object is
     *     {@link Responsable }
     *     
     */
    public Responsable getResponsable() {
        return responsable;
    }

    /**
     * Définit la valeur de la propriété responsable.
     * 
     * @param value
     *     allowed object is
     *     {@link Responsable }
     *     
     */
    public void setResponsable(Responsable value) {
        this.responsable = value;
    }

    /**
     * Obtient la valeur de la propriété nom.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNom() {
        return nom;
    }

    /**
     * Définit la valeur de la propriété nom.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNom(String value) {
        this.nom = value;
    }

    /**
     * Obtient la valeur de la propriété description.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDescription() {
        return description;
    }

    /**
     * Définit la valeur de la propriété description.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDescription(String value) {
        this.description = value;
    }

    /**
     * Gets the value of the refSemestre property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the refSemestre property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getRefSemestre().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link RefSemestre }
     * 
     * 
     */
    public List<RefSemestre> getRefSemestre() {
        if (refSemestre == null) {
            refSemestre = new ArrayList<RefSemestre>();
        }
        return this.refSemestre;
    }

    /**
     * Gets the value of the debouches property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the debouches property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getDebouches().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Debouches }
     * 
     * 
     */
    public List<Debouches> getDebouches() {
        if (debouches == null) {
            debouches = new ArrayList<Debouches>();
        }
        return this.debouches;
    }

}
