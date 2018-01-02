({
	helperTestMethod : function(component) {
		var action = component.get("c.JSONSampleTest");
        action.setParams({
            "s": "loginData"
        });
        action.setCallback(this, function(response){
            if (component.isValid() && response.getState() == "SUCCESS") {
                alert("Response from java class: " + response.getState());
                alert("return value response " + response.getReturnValue());
                //component.set("v.jsonSampler", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
	}
})