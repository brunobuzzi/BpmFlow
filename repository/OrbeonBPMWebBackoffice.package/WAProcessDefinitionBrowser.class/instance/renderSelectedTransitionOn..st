process
renderSelectedTransitionOn: html
	| svgCode |

	selectedObject ifNil: [^self].

	svgCode := (XpdlSvgConverter new generateSVGForTransition: selectedObject) contents.

	html div 
		class: 'transition-artifact'; 
		with: [html html: svgCode].