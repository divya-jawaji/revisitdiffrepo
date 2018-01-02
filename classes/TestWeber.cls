public class TestWeber {

    public String firstName;	//John
	public String lastName;	//Doe
	public Integer age;	//25
	public static TestWeber parse(String json){
		return (TestWeber) System.JSON.deserialize(json, TestWeber.class);
	}

	public static void sampleTestJSON() {
		String json=		'{ '+
		'  "firstName": "John",'+
		'  "lastName": "Doe",'+
		'  "age": 25'+
		'}';
		TestWeber obj = parse(json);
		System.debug('First Name ' + obj.firstName);
		System.assert(obj != null);
	}

}