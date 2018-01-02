{
    applyCSS: function(cmp, event) {
        var cmpTarget = cmp.find('changeIt');
        $A.util.addClass(cmpTarget, 'changeMe');
        
        var toastEvent = $A.get("e.force:showToast");
    	toastEvent.setParams({
        	"title": "Success!",
        	"message": "The record has been updated successfully."
   		 });
        toastEvent.fire();
        
    },
    
    removeCSS: function(cmp, event) {
        var cmpTarget = cmp.find('changeIt');
        $A.util.removeClass(cmpTarget, 'changeMe');
    }
}