public with sharing class DeploymentActivity {
    
    
    static String completeURL = '';
    
    @AuraEnabled
    public static Object getDeploymentSummary(String url, String orgname){
        
        DeploymentActivity deploymentActivity = new DeploymentActivity();
        
        completeURL = 'https://' + url + '/rabitservices?wsdl';
	    HttpRequest req = deploymentActivity.buildWebServiceRequest();
	    
	    String getDeploymentSummaryReq = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:web="http://ws.service.rabit.com/"><soapenv:Body><web:getDeploymentSummary><orgname>' + orgname + '</orgname></web:getDeploymentSummary></soapenv:Body></soapenv:Envelope>';
	    req.setBody(getDeploymentSummaryReq);
		Http http = new Http();
		HttpResponse res = deploymentActivity.invokeWebService(http, req);
        System.debug('GetDeploymentSummary String: ' + res.toString());
        System.debug('GetDeploymentSummary StatusCode: ' + res.getStatusCode());
        System.debug('GetDeploymentSummary Status: ' + res.getStatus());
        System.debug('GetDeploymentSummary Body: ' + res.getBody());
        System.debug('GetDeploymentSummary Soap Body -?  ' + getDeploymentSummaryReq);
        return res.getBody();
    }
    

    public HttpRequest buildWebServiceRequest(){
        HttpRequest req = new HttpRequest();
        req.setMethod('POST');
        req.setHeader('Content-Type', 'text/xml; charset=utf-8');   
        req.setEndpoint(completeURL); 
        return req;
    }

    public HttpResponse invokeWebService(Http h, HttpRequest req){
         HttpResponse res = h.send(req);
         return res;
    }

}