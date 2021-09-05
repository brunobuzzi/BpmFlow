other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := self session systemRoot newBpmnWebCanvasParent: mainPanel.

	svgCanvas model: model process;
		isLinkToSubprocessAvailable: false.

	html div with: [html render: svgCanvas]