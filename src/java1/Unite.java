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
    "nom",
    "identifiant",
    "nombreCredit",
    "professeurs",
    "resume",
    "plan",
    "refIntervenant",
    "lieu"
})
@XmlRootElement(name = "unite")
public class Unite {

    @XmlAttribute(name = "id", required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @XmlID
    protected String id;
    @XmlElement(required = true)
    protected String nom;
    @XmlElement(required = true)
    protected String identifiant;
    @XmlElement(required = true)
    protected String nombreCredit;
    protected Professeurs professeurs;
    protected List<Resume> resume;
    protected String plan;
    @XmlElement(name = "ref-intervenant")
    protected List<RefIntervenant> refIntervenant;
    protected List<Lieu> lieu;

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
     * Obtient la valeur de la propriété identifiant.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIdentifiant() {
        return identifiant;
    }

    /**
     * Définit la valeur de la propriété identifiant.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIdentifiant(String value) {
        this.identifiant = value;
    }

    /**
     * Obtient la valeur de la propriété nombreCredit.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNombreCredit() {
        return nombreCredit;
    }

    /**
     * Définit la valeur de la propriété nombreCredit.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNombreCredit(String value) {
        this.nombreCredit = value;
    }

    /**
     * Obtient la valeur de la propriété professeurs.
     * 
     * @return
     *     possible object is
     *     {@link Professeurs }
     *     
     */
    public Professeurs getProfesseurs() {
        return professeurs;
    }

    /**
     * Définit la valeur de la propriété professeurs.
     * 
     * @param value
     *     allowed object is
     *     {@link Professeurs }
     *     
     */
    public void setProfesseurs(Professeurs value) {
        this.professeurs = value;
    }

    /**
     * Gets the value of the resume property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the resume property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getResume().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Resume }
     * 
     * 
     */
    public List<Resume> getResume() {
        if (resume == null) {
            resume = new ArrayList<Resume>();
        }
        return this.resume;
    }

    /**
     * Obtient la valeur de la propriété plan.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPlan() {
        return plan;
    }

    /**
     * Définit la valeur de la propriété plan.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPlan(String value) {
        this.plan = value;
    }

    /**
     * Gets the value of the refIntervenant property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the refIntervenant property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getRefIntervenant().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link RefIntervenant }
     * 
     * 
     */
    public List<RefIntervenant> getRefIntervenant() {
        if (refIntervenant == null) {
            refIntervenant = new ArrayList<RefIntervenant>();
        }
        return this.refIntervenant;
    }

    /**
     * Gets the value of the lieu property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the lieu property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getLieu().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Lieu }
     * 
     * 
     */
    public List<Lieu> getLieu() {
        if (lieu == null) {
            lieu = new ArrayList<Lieu>();
        }
        return this.lieu;
    }

}
