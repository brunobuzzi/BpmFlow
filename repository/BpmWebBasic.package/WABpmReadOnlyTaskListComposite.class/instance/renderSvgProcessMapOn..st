other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := self session systemRoot newBpmnWebCanvasParent: mainPanel.

	svgCanvas model: model.

	html div with: [html render: svgCanvas]