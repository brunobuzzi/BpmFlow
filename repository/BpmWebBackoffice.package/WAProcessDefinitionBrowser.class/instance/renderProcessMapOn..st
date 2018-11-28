process
renderProcessMapOn: html
	| svgCode |

	svgCode := (XpdlSvgConverter convert: selectedLateralItem xmlString) generateSVGFor: selectedLateralItem.

	html div 
		class: 'transition-artifact'; 
		with: [html html: svgCode].