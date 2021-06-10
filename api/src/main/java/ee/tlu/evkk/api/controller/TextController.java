package ee.tlu.evkk.api.controller;

import org.springframework.web.bind.annotation.*;
import ee.tlu.evkk.api.dao.TextDao;
import java.util.UUID;
import java.util.ArrayList;
import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/texts")
public class TextController {

    TextDao textDao;
    public TextController(TextDao uusTDao) {
        textDao = uusTDao;
    }


    @GetMapping("/kysitekst")
    public String kysiTekst(String id) {
        return textDao.findTextById(UUID.fromString(id));
    }

    @CrossOrigin("*")
    @GetMapping("/getValues")
    public String getValues(String cId) {
        return textDao.findValueByPropertyName(cId);
    }

    @GetMapping("/getDetailedValues")
    public String getValues(@RequestParam("corpus") String corpus, String pValue, String pName) {
        // List<String> list = new ArrayList<>();
        String[] corpusArray = corpus.split(",");
        // for (int i = 0; i < corpusArray.length; i++) {
        //     list.add("'" + corpusArray[i] + "'");
        // }
        // String cId = String.join(",", list); // "'corpus', 'corpus', 'corpus'"

        // debugging
        System.out.println(corpus);
        // System.out.println(corpusArray);
        // System.out.println(cId);

        return textDao.findDetailedValueByPropertyName(pValue, pName, corpusArray);
    }

    @GetMapping("/tervitus")
    public String tervitus(){
        return "Tere";
    }

    @GetMapping("/nimetervitus")
    public String nimetervitus(String eesnimi, String perekonnanimi){
        return "Tere, " + eesnimi + " " + perekonnanimi;
    }

    @GetMapping("/kysikorpusetekstid")
    public List<String> kysiKorpuseTekstid(String id){
        return textDao.findTextsByCorpusId(id);
    }
}