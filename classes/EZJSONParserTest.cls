public with sharing class EZJSONParserTest{
	public cls_userchanges userchanges;
	class cls_userchanges {
		public cls_types[] types;
		public String id;	//00528000001q1ugAAA
	}
	class cls_types {
		public cls_members[] members;
		public String name;	//ApexClass
	}
	class cls_members {
		public String filename;	//classes/AccPlanRelatedObjectsListCtrl.cls
		public String manageablestate;	//unmanaged
		public String modifiedbyid;	//00528000001q1ugAAA
		public String action;	//A
		public String modifiedbyname;	//AutoRABIT Dev 7 Playground
		public String modifieddate;	//2016-06-21 13:32
		public String fullname;	//AccPlanRelatedObjectsListCtrl
		public String content;	//AccPlanRelatedObjectsListCtrl
	}
	public static EZJSONParserTest parse(String json){
		return (EZJSONParserTest) System.JSON.deserialize(json, EZJSONParserTest.class);
	}

	public static void testParse() {
		String json=		'{'+
		'	"userchanges": {'+
		'		"types": [{'+
		'			"members": [{'+
		'				"filename": "classes/AccPlanRelatedObjectsListCtrl.cls",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-06-21 13:32",'+
		'				"fullname": "AccPlanRelatedObjectsListCtrl",'+
		'				"content": "AccPlanRelatedObjectsListCtrl"'+
		'			},'+
		'			{'+
		'				"filename": "classes/TestMethods1.cls",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-05-01 10:23",'+
		'				"fullname": "TestMethods1",'+
		'				"content": "TestMethods1"'+
		'			},'+
		'			{'+
		'				"filename": "classes/testCntrl.cls",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-04-27 12:24",'+
		'				"fullname": "testCntrl",'+
		'				"content": "testCntrl"'+
		'			}],'+
		'			"name": "ApexClass"'+
		'		},'+
		'		{'+
		'			"members": [{'+
		'				"filename": "appMenus/AppSwitcher.appMenu",'+
		'				"manageablestate": null,'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "1970-01-01 00:00",'+
		'				"fullname": "AppSwitcher",'+
		'				"content": "AppSwitcher"'+
		'			},'+
		'			{'+
		'				"filename": "appMenus/Salesforce1.appMenu",'+
		'				"manageablestate": null,'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "1970-01-01 00:00",'+
		'				"fullname": "Salesforce1",'+
		'				"content": "Salesforce1"'+
		'			}],'+
		'			"name": "AppMenu"'+
		'		},'+
		'		{'+
		'			"members": [{'+
		'				"filename": "applications/standard__AppLauncher.app",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-01-28 12:29",'+
		'				"fullname": "standard__AppLauncher",'+
		'				"content": "standard__AppLauncher"'+
		'			},'+
		'			{'+
		'				"filename": "applications/standard__Chatter.app",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-01-28 12:29",'+
		'				"fullname": "standard__Chatter",'+
		'				"content": "standard__Chatter"'+
		'			},'+
		'			{'+
		'				"filename": "applications/standard__Community.app",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-01-28 12:29",'+
		'				"fullname": "standard__Community",'+
		'				"content": "standard__Community"'+
		'			},'+
		'			{'+
		'				"filename": "applications/standard__Content.app",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-01-28 12:29",'+
		'				"fullname": "standard__Content",'+
		'				"content": "standard__Content"'+
		'			},'+
		'			{'+
		'				"filename": "applications/standard__Insights.app",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-01-28 12:29",'+
		'				"fullname": "standard__Insights",'+
		'				"content": "standard__Insights"'+
		'			},'+
		'			{'+
		'				"filename": "applications/standard__Marketing.app",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-01-28 12:29",'+
		'				"fullname": "standard__Marketing",'+
		'				"content": "standard__Marketing"'+
		'			},'+
		'			{'+
		'				"filename": "applications/standard__Platform.app",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-01-28 12:29",'+
		'				"fullname": "standard__Platform",'+
		'				"content": "standard__Platform"'+
		'			},'+
		'			{'+
		'				"filename": "applications/standard__Sales.app",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-01-28 12:29",'+
		'				"fullname": "standard__Sales",'+
		'				"content": "standard__Sales"'+
		'			},'+
		'			{'+
		'				"filename": "applications/standard__Service.app",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-01-28 12:29",'+
		'				"fullname": "standard__Service",'+
		'				"content": "standard__Service"'+
		'			},'+
		'			{'+
		'				"filename": "applications/standard__ServiceConsole.app",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-01-28 12:29",'+
		'				"fullname": "standard__ServiceConsole",'+
		'				"content": "standard__ServiceConsole"'+
		'			},'+
		'			{'+
		'				"filename": "applications/standard__Sites.app",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-01-28 12:29",'+
		'				"fullname": "standard__Sites",'+
		'				"content": "standard__Sites"'+
		'			},'+
		'			{'+
		'				"filename": "applications/standard__Work.app",'+
		'				"manageablestate": "unmanaged",'+
		'				"modifiedbyid": "00528000001q1ugAAA",'+
		'				"action": "A",'+
		'				"modifiedbyname": "AutoRABIT Dev 7 Playground",'+
		'				"modifieddate": "2016-01-28 12:29",'+
		'				"fullname": "standard__Work",'+
		'				"content": "standard__Work"'+
		'			}],'+
		'			"name": "CustomApplication"'+
		'		}],'+
		'		"id": "00528000001q1ugAAA"'+
		'	}'+
		'}';
		EZJSONParserTest obj = parse(json);
		if(obj != null){
		    System.debug('Parsing successful Bro');
		    cls_userchanges tempuserchanges = obj.userchanges;
		    System.debug('Parsing successful Bro two ' + tempuserchanges.id);
		    System.debug('Parsing successful Bro two length' + tempuserchanges.types.size());
		    //cls_types temptypes = tempuserchanges.types.length();
		    
		}
		System.assert(obj != null);
	}
}