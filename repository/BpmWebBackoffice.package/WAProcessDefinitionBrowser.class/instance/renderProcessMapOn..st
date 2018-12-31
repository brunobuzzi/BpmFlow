process
renderProcessMapOn: html
"	| svgCode |

	svgCode := (XpdlSvgConverter convert: selectedLateralItem xmlString) generateSVGFor: selectedLateralItem.

	html div 
		class: 'transition-artifact'; 
		with: [html html: svgCode]."

	svgCanvas model: selectedLateralItem.

	html div with: [html render: svgCanvas]