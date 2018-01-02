({
    initer : function(component, event, helper) {
        
        var svg = d3.select("body")
        .append("svg")
        .append("g");
        
        svg.append("g")
        .attr("class", "slices");
        svg.append("g")
        .attr("class", "labels");
        svg.append("g")
        .attr("class", "lines");
        
        var width = 960,
            height = 450,
            radius = Math.min(width, height) / 2;
        
        var pie = d3.layout.pie()
        .sort(null)
        .value(function (d) {
            return d.value;
        });
        
        var arc = d3.svg.arc()
        .outerRadius(radius * 0.8)
        .innerRadius(radius * 0.4);
        
        var outerArc = d3.svg.arc()
        .innerRadius(radius * 0.9)
        .outerRadius(radius * 0.9);
        
        svg.attr("transform", "translate(" + width / 2 + "," + height / 2 + ")");
        
        var color = d3.scale.category20()
                    .domain(["Lorem ipsum", "dolor sit", "amet", "consectetur", "adipisicing", "elit", "sed", "do", "eiusmod", "tempor", "incididunt"]);
        
        
        
        },
    
    randomize : function(component, event, helper){
        var lal = component.find("samButton").get("v.label");
        //var durationComponent = document.getElementById("duration").value;
        
        console.log("Sampath " + durationComponent + lal);
        
    },
    
    afterJsLoaded : function(component, event, helper){
        
        console.log("[[[");
        //String person = window.prompt('Are you feeling lucky');
        
    }
    
})