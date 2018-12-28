process
renderProcessMapOn: html
	| svgCode |

"	svgCode := (XpdlSvgConverter convert: selectedLateralItem xmlString) generateSVGFor: selectedLateralItem.

	html div 
		class: 'transition-artifact'; 
		with: [html html: svgCode]."

	html div with: [html render: (WABpmnCanvasComposite on: selectedLateralItem)]