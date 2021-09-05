render
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := self session systemRoot newBpmnWebCanvasParent: self.

	svgCanvas 
		isLinkToSubprocessAvailable: false;
		model: selectedLateralItem.

	svgCanvas addValue: false named: 'parent.process.icon'. "prevent the go to parent process icon to be rendered"

	html div with: [html render: svgCanvas]