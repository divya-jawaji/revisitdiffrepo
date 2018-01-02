public class JsonParserTest {
    
    public static void sampleFunction(){
        
        String jsonString = '{"deploymenthistory": {"deployment": [{"label": "OnlyField","source": "sandbox","sourceorg": "CAAEB0618C4D106F7EF06D368AACB84E","sourceorgusername": "bhargavi.v@autorabit.com.devsb","type": "custom"},{"label": "DemoTest","source": "sandbox","sourceorg": "CAAEB0618C4D106F7EF06D368AACB84E","sourceorgusername": "bhargavi.v@autorabit.com.devsb","type": "custom"}]}}';
        
        Map<String, Object> m = 
   (Map<String, Object>)
      JSON.deserializeUntyped(jsonString);
    }
    
}