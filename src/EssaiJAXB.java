
import java.Master;
import java.io.File;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

public class EssaiJAXB {

    public static void main(String[] args) throws Exception {
        for (int i = 0; i < args.length; i++) {
            test(args[i]);
        }
    }

    private static void test(String fileName) throws Exception {

        JAXBContext context = JAXBContext.newInstance("java");

        // creer les instances a partir du fichier XML
        Unmarshaller u = context.createUnmarshaller();
        Object o = u.unmarshal(new File(fileName));
        Master m1 = (Master ) o;

        // serialiser les instances dans un document XML
        Marshaller m = context.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
        m.marshal(o, new File("master.out.xml"));
    }

}
