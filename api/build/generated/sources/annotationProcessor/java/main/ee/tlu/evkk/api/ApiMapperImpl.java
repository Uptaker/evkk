package ee.tlu.evkk.api;

import ee.evkk.dto.integration.FileResponseEntity;
import ee.tlu.evkk.api.controller.dto.StatusResponseEntity;
import ee.tlu.evkk.api.controller.dto.UserFileResponseEntity;
import ee.tlu.evkk.api.controller.tools.dto.MasinoppeEnustusResponseEntity;
import ee.tlu.evkk.api.controller.tools.dto.MinitornPikkusResponseEntity;
import ee.tlu.evkk.api.dao.dto.UserFileView;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.processing.Generated;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2021-06-16T10:39:00+0300",
    comments = "version: 1.3.0.Final, compiler: javac, environment: Java 11.0.11 (Ubuntu)"
)
public class ApiMapperImpl extends ApiMapper {

    @Override
    public StatusResponseEntity toStatusResponseEntity(String loggedInEmailAddress, Map<String, String> integrationPaths) {

        StatusResponseEntity statusResponseEntity = new StatusResponseEntity();

        if ( loggedInEmailAddress != null ) {
            statusResponseEntity.setLoggedInEmailAddress( loggedInEmailAddress );
        }
        if ( integrationPaths != null ) {
            Map<String, String> map = integrationPaths;
            if ( map != null ) {
                statusResponseEntity.setIntegrationPaths( new HashMap<String, String>( map ) );
            }
        }

        return statusResponseEntity;
    }

    @Override
    public MinitornPikkusResponseEntity toMinitornPikkusResponseEntity(Long length) {

        MinitornPikkusResponseEntity minitornPikkusResponseEntity = new MinitornPikkusResponseEntity();

        if ( length != null ) {
            minitornPikkusResponseEntity.setLength( length );
        }

        return minitornPikkusResponseEntity;
    }

    @Override
    public MasinoppeEnustusResponseEntity toMasinoppeEnustusResponseEntity(String result) {

        MasinoppeEnustusResponseEntity masinoppeEnustusResponseEntity = new MasinoppeEnustusResponseEntity();

        if ( result != null ) {
            masinoppeEnustusResponseEntity.setResult( result );
        }

        return masinoppeEnustusResponseEntity;
    }

    @Override
    public FileResponseEntity toFileResponseEntity(UserFileView userFileView, String url, Boolean aPublic) {

        FileResponseEntity fileResponseEntity = new FileResponseEntity();

        if ( userFileView != null ) {
            fileResponseEntity.setUserFileId( userFileView.getUserFileId() );
            fileResponseEntity.setName( userFileView.getName() );
            fileResponseEntity.setMediaType( userFileView.getMediaType() );
            fileResponseEntity.setCreatedAt( userFileView.getCreatedAt() );
        }
        if ( url != null ) {
            fileResponseEntity.setUrl( url );
        }
        if ( aPublic != null ) {
            fileResponseEntity.setPublic( aPublic );
        }

        return fileResponseEntity;
    }

    @Override
    public UserFileResponseEntity toUserFileResponseEntity(UserFileView userFileView) {

        UserFileResponseEntity userFileResponseEntity = new UserFileResponseEntity();

        if ( userFileView != null ) {
            userFileResponseEntity.setUserFileId( userFileView.getUserFileId() );
            userFileResponseEntity.setName( userFileView.getName() );
            userFileResponseEntity.setMediaType( userFileView.getMediaType() );
            userFileResponseEntity.setCreatedAt( userFileView.getCreatedAt() );
        }

        return userFileResponseEntity;
    }
}
