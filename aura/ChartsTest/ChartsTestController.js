({
    afterLoadingScripts : function(component, event, helper) {
        console.log("Scripts loading Successful");
        /*var data = [{ value: 4, key: 'Label1' }, { value: 5, key: 'Label2' }, { value: 6, key: 'Label3' }];
        var data1 = [{ value: 1, key: 'Label1' }, { value: 2, key: 'Label2' }, { value: 3, key: 'Label3' }];
        var data2 = [{ value: 4, key: 'Label1' }, { value: 5, key: 'Label2' }, { value: 6, key: 'Label3' }];
        
        var x = 1; */
        var data = [4, 8, 40, 16, 23, 42];
        
        var x = d3.scaleLinear()
        .domain([0, d3.sum(data)])
        .range([0, 420]);
        
        d3.select(".chart")
        .selectAll("div")
        .data(data)
        .enter().append("div")
        .style("width", function(d) { return x(d) + "px"; })
        .text(function(d) { return d; });
        
        
        
    },
    buttonPress : function(component, event, helper){
        
        console.log("Button got clicked");
        
        InitChart();
        
        function InitChart() {
            
            var lineData = [{
                'x': 1,
                'y': 5
            }, {
                'x': 20,
                'y': 20
            }, {
                'x': 40,
                'y': 10
            }, {
                'x': 60,
                'y': 40
            }, {
                'x': 80,
                'y': 5
            }, {
                'x': 100,
                'y': 60
            }];
            
            var vis = d3.select("#visualisation"),
                WIDTH = 1000,
                HEIGHT = 500,
                MARGINS = {
                    top: 20,
                    right: 20,
                    bottom: 20,
                    left: 50
                },
                xRange = d3.scaleLinear().range([MARGINS.left, WIDTH - MARGINS.right]).domain([d3.min(lineData, function (d) {
                    return d.x;
                }),
                                                                                                d3.max(lineData, function (d) {
                                                                                                    return d.x;
                                                                                                })
                                                                                               ]),
                
                yRange = d3.scaleLinear().range([HEIGHT - MARGINS.top, MARGINS.bottom]).domain([d3.min(lineData, function (d) {
                    return d.y;
                }),
                                                                                                 d3.max(lineData, function (d) {
                                                                                                     return d.y;
                                                                                                 })
                                                                                                ]),
                
                xAxis = d3.axisBottom()
            .scale(xRange)
            ,
                
                yAxis = d3.axisLeft()
            .scale(yRange)
            ;
            
            
            vis.append("svg:g")
            .attr("class", "x axis")
            .attr("transform", "translate(0," + (HEIGHT - MARGINS.bottom) + ")")
            .call(xAxis);
            
            vis.append("svg:g")
            .attr("class", "y axis")
            .attr("transform", "translate(" + (MARGINS.left) + ",0)")
            .call(yAxis);
            
            
        }
        
    }    
})