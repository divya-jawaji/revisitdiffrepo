public class SampleCalloutTest {

    public static void callingOutSample(){
        
        HttpRequest req = new HttpRequest();
		req.setMethod('GET');
		req.setEndpoint('http://www.w3schools.com/jquery/demo_ajax_json.js');
		Http http = new Http();
		try{
			HttpResponse res = http.send(req);
			System.debug('String: ' + res.toString());
			System.debug('StatusCode: ' + res.getStatusCode());
			System.debug('Status: ' + res.getStatus());
			System.debug('Body: ' + res.getBody());

		} catch(System.CalloutException e){

		}
        
    }
}