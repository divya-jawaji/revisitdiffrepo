public with sharing class Testeeeeee {
	public static void callingOut(){
        HttpRequest req = new HttpRequest();
		req.setMethod('POST');
		req.setHeader('Content-Type', 'text/xml; charset=utf-8');   
		req.setEndpoint('http://183.82.4.69:8966/rabit/rabitservices?wsdl');
		String reqBody = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ws="http://ws.service.rabit.com/"><soapenv:Header></soapenv:Header><soapenv:Body><ws:getSourcePackageManifest><orgname>autorabit.com-bH8mlI</orgname><projectname></projectname><buildnumber></buildnumber><sourceorgid>FD0CCE59D71D3388796B6EFB6E4E4061</sourceorgid><labelname>Temp</labelname><deploymentsource>sandbox</deploymentsource><username>sampath.c@autorabit.com</username><scmlabel>undefined</scmlabel><releaselabelid>undefined</releaselabelid></ws:getSourcePackageManifest></soapenv:Body></soapenv:Envelope>';
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

		/*String hashString = '1000' + String.valueOf(Datetime.now().formatGMT('yyyy-MM-dd HH:mm:ss.SSS'));
		Blob hash = Crypto.generateDigest('MD5', Blob.valueOf(hashString));
		String hexDigest = EncodingUtil.convertToHex(hash);
		system.debug('##########' + hexDigest );
		system.debug('Sample test Integer' + Crypto.getRandomInteger() + '\n Long ' + Crypto.getRandomLong());*/

        
    }
}