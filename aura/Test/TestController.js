({
    toastShower : function(component, event, helper) {
        /*var showToast = $A.get('e.force:showToast');

        //set the title and message params
        showToast.setParams(
            {
                'title': 'Progress: ',
                'message': 'Sample test'
            }
        );

        //fire the event
        showToast.fire();*/
        var evt = $A.get("e.force:navigateToComponent");
        evt.setParams({
            componentDef: "c:SAmpleHider",
            componentAttributes: {
                sampleAttribute: 'Sampath'
            }
        });
        evt.fire();
    }
})