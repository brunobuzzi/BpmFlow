render
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := self defaultBpmnCanvasClass parent: self.

	svgCanvas 
		isLinkToSubprocessAvailable: false;
		model: selectedLateralItem.

	html div with: [html render: svgCanvas]