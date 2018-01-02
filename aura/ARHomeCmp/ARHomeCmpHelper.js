({
    getDeploymentSummaryCallOut : function(component, helper) {
        var action = component.get("c.getDeploymentSummary");
        action.setParams({
            "url": component.get("v.completeLoginData.LoginScreenURL__c"),
            "orgname" : component.get("v.completeLoginData.OrgName__c")
        });
        action.setCallback(this, function(response){
            if (component.isValid() && response.getState() == "SUCCESS") {
                console.log(response.getReturnValue());
                alert("Response " + response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
        alert("Seconder " + component.get("v.completeLoginData.LoginScreenURL__c") + " ->" + component.get("v.completeLoginData.OrgName__c"));
    }
}