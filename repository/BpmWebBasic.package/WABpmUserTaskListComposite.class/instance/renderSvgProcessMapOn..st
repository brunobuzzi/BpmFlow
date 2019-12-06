other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := self defaultBpmnCanvasClass parent: mainPanel.

	svgCanvas model: model process;
		isLinkToSubprocessAvailable: false.

	html div with: [html render: svgCanvas]