svg properties
renderLinearGradientGreenYellowOn: html

	html svgLinearGradient 
		attributeAt: 'id' put: 'gradient-green-yellow';
		attributeAt: 'x1' put: '0%';
		attributeAt: 'y1' put: '0%';
		attributeAt: 'x2' put: '100%';
		attributeAt: 'y2' put: '0%';
		with: [
			html svgStopLinearGradient 
					attributeAt: 'offset' put: '0%';
					attributeAt: 'style' put: 'stop-color:rgb(0,128,0);stop-opacity:1'.
			html svgStopLinearGradient 
					attributeAt: 'offset' put: '100%';
					attributeAt: 'style' put: 'stop-color:rgb(240,240,0);stop-opacity:1'.
	].