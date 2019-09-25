other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := self defaultBpmnCanvasClass parent: self.

	svgCanvas model: (selectedLateralItem isProcessDefinition ifTrue:[selectedLateralItem] ifFalse: [selectedLateralItem process]).

	html div with: [html render: svgCanvas]