({
	doInit : function(component, event, helper) {
        alert(component.get("v.completeLoginData.OrgName__c"));
		helper.getDeploymentSummaryCallOut(component, helper);
	}
})