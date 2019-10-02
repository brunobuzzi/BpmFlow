other
renderContentOn: html

	html svgCanvas with: [
		self renderRoundRectangleOn: html at: 10@10 width: 250 height: 40 rx: 5 ry: 5 strokeWidth: '2px' stroke: 'black' fillColor: 'beige'.
		self renderTextOn: html text: model applicationName at: 20@35 textSizePx: '18px'.
	].