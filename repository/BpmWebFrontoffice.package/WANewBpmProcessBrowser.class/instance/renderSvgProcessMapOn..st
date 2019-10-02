other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := self defaultBpmnCanvasClass parent: self.

	svgCanvas model: selectedLateralItem.
	svgCanvas subProcess: selectedSubProcess.

	html div with: [html render: svgCanvas]