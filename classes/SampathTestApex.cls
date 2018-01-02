public with sharing class SampathTestApex {

	public SampathTestApex(){}

	/*public static void callingOut(){
        HttpRequest req = new HttpRequest();
		req.setMethod('POST');
		req.setHeader('Content-Type', 'text/xml; charset=utf-8');   
		req.setEndpoint('http://183.82.4.69:8966/rabit/rabitservices?wsdl');
		String reqBody = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ws="http://ws.service.rabit.com/">
<soapenv:Header></soapenv:Header>
<soapenv:Body>
<ws:getSourcePackageManifest>
<orgname>techsophy.com</orgname>
<projectname></projectname>
<buildnumber></buildnumber>
<sourceorgid>851557DFAE2D2B4C9C19279418B266D5</sourceorgid>
<labelname>Temp</labelname>
<deploymentsource>sandbox</deploymentsource>
<username>pavan.m@techsophy.com</username>
<scmlabel>undefined</scmlabel>
<releaselabelid>undefined</releaselabelid>
</ws:getSourcePackageManifest>
</soapenv:Body>
</soapenv:Envelope>';
		req.setBody(reqBody);
		Http http = new Http();
		try{
			HttpResponse res = http.send(req);
			System.debug('String: ' + res.toString());
			System.debug('StatusCode: ' + res.getStatusCode());
			System.debug('Status: ' + res.getStatus());
			System.debug('Body: ' + res.getBody());

		} catch(System.CalloutException e){

		}


        
    }*/
    public static void tester(){
    	System.debug('SAmpath');
    }
}