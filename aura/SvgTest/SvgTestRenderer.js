({
  render: function(component, helper) {
    //grab attributes from the component markup
    //var classname = component.get("v.class");
    //var xlinkhref = component.get("v.xlinkHref");
    var ariaHidden = component.get("v.ariaHidden");
    var idName = component.get("v.id");
    var width = component.get("v.width");
    var height = component.get("v.height");

    //return an svg element w/ the attributes
    var svg = document.createElementNS("http://www.w3.org/2000/svg", "svg");
    //svg.setAttribute('class', classname);
    svg.setAttribute('aria-hidden', ariaHidden);
    svg.setAttribute('style', 'fill: steelblue;');
    svg.setAttribute('id', idName);
    svg.setAttribute('width', width);
    svg.setAttribute('height', height);
    //svg.innerHTML = '<use xlink:href="'+xlinkhref+'"></use>';
    return svg;
  }
})