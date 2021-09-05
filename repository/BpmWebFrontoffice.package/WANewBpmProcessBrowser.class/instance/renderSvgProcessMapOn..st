other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := self session systemRoot newBpmnWebCanvasParent: self.

	svgCanvas model: selectedLateralItem.
	svgCanvas subProcess: selectedSubProcess.

	html div with: [html render: svgCanvas]