other
example3
	| jasv line |
	jasv := JASVGIBpmCanvas newWidth: '400px' height: '400px'.
	jasv addMarker: 
		(self markerClass newArrowAt: 10@5 id: 'arrow' width: 10 height:10).

	jasv drawRoundRectangleAt: 300@180 id: 'rect1' width: 90 height: 60 stroke: 'red' fillColor: 'green'.
	(jasv drawGatewayAt: 10@100 id: 'rect2' height: 40 width: 40 fillColor: 'lightblue' stroke: 'black').
	jasv drawRoundRectangleAt: 30@200 id: 'rect3' width: 90 height: 60 stroke: 'blue' fillColor: 'red'.

	line := jasv connect: (jasv getSvgObjectId: 'rect1') to:  (jasv getSvgObjectId: 'rect2').
	line setMarkerEnd: 'arrow'.
	line := jasv connect: (jasv getSvgObjectId: 'rect3') to:  (jasv getSvgObjectId: 'rect2').
	line setMarkerEnd: 'arrow'.
	jasv contents.