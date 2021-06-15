package ee.tlu.evkk.api.controller;

import org.json.*;
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
    public String getDetailedSearch(@RequestParam("data") String data) {
        System.out.println(data);
        try {
        JSONObject json = new JSONObject(data);

        String pName = json.getString("pName"); // pName - main filter (property_name)

        JSONArray arr = json.getJSONArray("pValue");
        
        ArrayList<String> pValue = new ArrayList<String>(); // pValue - array of selected filters (property_value)
        if (arr != null) { 
           for (int i=0; i < arr.length(); i++){ 
            pValue.add(arr.getString(i));
           } 
        } 
        return pValue.toString();


        } catch (JSONException err){
            System.out.println("Error" + err.toString());
            JSONObject json = new JSONObject(data);
            System.out.println("TEST: " + json.getJSONArray("pValue"));
            return "oops, ei tööta";

       }

    //    System.out.println(JsonObject.getJSONObject("selectedFilters"));
        // return textDao.detailedSearch(pValueArray, pName, corpusArray, filterNamesArray, filterValuesArray);
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