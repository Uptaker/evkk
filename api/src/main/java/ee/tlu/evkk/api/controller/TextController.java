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

    @CrossOrigin("*")
    @GetMapping("/getValues")
    public String getValues(String cId) {
        return textDao.findValueByPropertyName(cId);
    }

    @GetMapping("/getMiniStats")
    public String getMiniStats(String corpus) {
        String[] corpusArray = corpus.split(",");
        return textDao.findMiniStats(corpusArray);
    }

    @GetMapping("/getDetailedValues")
    public String getValues(@RequestParam("corpus") String corpus, String pValue, String pName) {
        String[] corpusArray = corpus.split(",");
        String[] pValueArray = pValue.split(",");
        return textDao.findDetailedValueByPropertyName(pValueArray, pName, corpusArray);
    }

    @GetMapping("/detailedSearch")
    public String getValues(@RequestParam("corpus") String corpus, String pValue, String pName) {
        String[] corpusArray = corpus.split(",");
        String[] pValueArray = pValue.split(",");
        return textDao.findDetailedValueByPropertyName(pValueArray, pName, corpusArray);
    }

    @GetMapping("/getAvailableValues")
    public String getAvailableValues(String pName) {
        return textDao.findAvailableValues(pName);
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