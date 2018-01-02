({
    updateDataLogger : function(component, event, helper){
        var dataLogger = document.getElementById('dataLogger');
  
        dataLogger.innerHTML = data.map(function(data) {
            return '<br />'+data['key']+': '+data['value'];
        });
        
    },
    
    updateTooltipLogger : function(d){
        var tooltipLogger = document.getElementById('tooltipLogger');
        tooltipLogger.innerHTML = '<br />'+d.data.key+': '+d.data.value+'<br />contentGenerator Last Called: '+Date.now();
    }
})