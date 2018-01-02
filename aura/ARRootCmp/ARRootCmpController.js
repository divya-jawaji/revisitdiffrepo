({
    doInit : function(component, event, helper){
        var loginActivityComponent = component.find('HomeActivity');
        $A.util.addClass(loginActivityComponent, 'hideComponent');
        
    },
    showORhide : function(component, event, helper) {
        var isLoginsuccessful = event.getParam("completeLoginDataObj");
        //alert("From Created event" + isLoginsuccessful.FirstLastName__c);
        
        component.set("v.completeLoginData", isLoginsuccessful);
        
        if(event.getParam("isLoginsuccessful") === "true"){
            var loginActivityComponent = component.find('LoginActivity');
            $A.util.addClass(loginActivityComponent, 'hideComponent');
            
            var homeActivityComponent = component.find('HomeActivity');
            $A.util.removeClass(homeActivityComponent, 'hideComponent');
            $A.util.addClass(homeActivityComponent, 'showComponent');
            
        }
        
    }
})