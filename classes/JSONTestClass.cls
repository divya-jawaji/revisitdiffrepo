public class JSONTestClass {

    static String completeURL='';

    @AuraEnabled
    public static JSONTestObj__c JSONSampleTest(String s){
        
        JSONTestClass jsonTestClass = new JSONTestClass();
    
        completeURL = 'http://www.w3schools.com/jquery/demo_ajax_json.js';
    
	    HttpRequest req = jsonTestClass.buildWebServiceRequest();
	    
	    //req.setBody(getDeploymentSummaryReq);
		Http http = new Http();
		HttpResponse res = jsonTestClass.invokeWebService(http, req);
        System.debug('GetDeploymentSummary String: ' + res.toString());
        System.debug('GetDeploymentSummary StatusCode: ' + res.getStatusCode());
        System.debug('GetDeploymentSummary Status: ' + res.getStatus());
        System.debug('GetDeploymentSummary Body: ' + res.getBody());
        
        JSONTestObj__c tempObj = new JSONTestObj__c();
        tempObj.age__c = 25;
        tempObj.firstName__c = 'John';
        tempObj.lastName__c = 'Doe';
        
        //JSONParser parser = JSON.createParser(res.getBody());
        SampleW3 c = (SampleW3)JSON.deserializeStrict(res.getBody(),SampleW3.class);
        System.debug('First Name' + c.firstName);
        
        System.debug(JSON.deserializeUntyped(res.getBody()));
        JSONTestObj__c jsonSalesforceCustomObj = tempObj ;
    //System.assertEquals(c.make, 'SFDC');
    //System.assertEquals(c.year, '2020');
    
    return tempObj;
        
        
    }
    
    public HttpRequest buildWebServiceRequest(){
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        //req.setHeader('Content-Type', 'text/xml; charset=utf-8');   
        req.setEndpoint(completeURL); 
        return req;
    }

    public HttpResponse invokeWebService(Http h, HttpRequest req){
         HttpResponse res = h.send(req);
         return res;
    }

}