package ee.tlu.evkk.api.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.UUID;

@Mapper
@Repository
public interface TextDao {

    String findTextById(@Param("textId") UUID textId);

    String findDetailedValueByPropertyName(@Param("pValue") String pValue, @Param("pName") String pName, @Param("cId") String[] cId); // property value, name, corpus id

    String findValueByPropertyName(@Param("cId") String cId); //corpus id

    List<String> findTextsByCorpusId(@Param("corpusId") String corpusId);

}
