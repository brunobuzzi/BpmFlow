other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := WABpmnCanvasOnlineComposite parent: mainPanel.

	svgCanvas model: model process.

	html div with: [html render: svgCanvas]