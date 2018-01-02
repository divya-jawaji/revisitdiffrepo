({
    clickCreateExpense: function(component, event, helper) {
        
        var cmpTarget = component.find('finalComponent');
        $A.util.removeClass(cmpTarget, 'hide');
        $A.util.addClass(cmpTarget, 'show');
        
        /*if(helper.validateExpenseForm(component)){
            // Create the new expense
            var newExpense = component.get("v.newExpense");
            var value = component.get("v.newExpense.Name");
            //console.log(value);
            
            var expenses = component.get("v.expenses");
            var expensesData = JSON.parse(JSON.stringify(expenses));
            var flag = true;
            //console.log(expensesData.length);
            for (var i = 0; i < expensesData.length; i++) {
                if(value.toLowerCase() == expensesData[i].Name){
                    flag = false;
                }
                //var iterationValue = expensesData[i];
                //console.log(iterationValue.Name);
            }
            if(flag){
                helper.createExpense(component, newExpense);
            } else{
                var nameField = component.find("expname");
                nameField.set("v.errors", [{message:"Expense name already exists"}]);
            }
            
            //console.log("Length: " + JSON.parse(JSON.stringify(expenses)));
            
            //helper.createExpense(component, newExpense);
        }*/
    },
    // Load expenses from Salesforce
    doInit: function(component, event, helper) {
        
        var cmpTarget = component.find('finalComponent');
        $A.util.addClass(cmpTarget, 'hide');
        
        //$A.util.removeClass(cmpTarget, 'hide');
        //$A.util.addClass(cmpTarget, 'show');
        
        // Create the action
        var action = component.get("c.getExpenses");
        
        // Add callback behavior for when response is received
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
                component.set("v.expenses", response.getReturnValue());
            }
            else {
                console.log("Failed with state: " + state);
            }
        });
        
        // Send action off to be executed
        $A.enqueueAction(action);
    },
    
    componentnavigator : function(component, event, helper){
        
        /*var evt = $A.get("e.force:navigateToComponent");
        evt.setParams({
            componentDef: "c:ARIndexCmp",
            componentAttributes: {
                sampleAttribute: "Sampath"
            }
        });
        evt.fire();*/
        
        //alert("Tester sam");
        /*var button = $A.get("e.force:navigateToComponent");
          button.setParams({
            componentDef:"c:SAmpleHider",
            componentAttributes: {
              sampleAttribute: component.get("v.newExpense.Name")
            }

          });
          button.fire();*/
        /*var toastEvent = $A.get("e.force:showToast");
    	toastEvent.setParams({
        	"title": "Success!",
        	"message": "The record has been updated successfully."
   		 });
        toastEvent.fire();*/
        
        /*showToast : function(component, event, helper) {
    	
    	
		}
        */
        
        
    },
    
    
})