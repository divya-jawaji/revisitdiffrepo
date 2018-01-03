public with sharing class ArAppWeber {
	public ArAppWeber() {}

	public static String userLogin(String userMail, String encodedPassword, String secCode){

		String userLoginBody =  '<usermail>' + userMail + '</usermail>' +
                				'<password>' + encodedPassword + '</password>' +
                				'<seccode>' + secCode + '</seccode>';
        System.debug('Weber ' + userLoginBody);

		return ArAppSingleTon.finalSoaper(userLoginBody);
	}
}