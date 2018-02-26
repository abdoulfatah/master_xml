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
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElements;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "thOrTd"
})
@XmlRootElement(name = "tr")
public class Tr {

    @XmlElements({
        @XmlElement(name = "th", required = true, type = Th.class),
        @XmlElement(name = "td", required = true, type = Td.class)
    })
    protected List<Object> thOrTd;

    /**
     * Gets the value of the thOrTd property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the thOrTd property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getThOrTd().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Th }
     * {@link Td }
     * 
     * 
     */
    public List<Object> getThOrTd() {
        if (thOrTd == null) {
            thOrTd = new ArrayList<Object>();
        }
        return this.thOrTd;
    }

}
