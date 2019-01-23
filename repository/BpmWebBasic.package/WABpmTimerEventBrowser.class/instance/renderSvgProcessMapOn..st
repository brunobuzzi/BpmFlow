other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := WABpmnCanvasComposite parent: self.

	svgCanvas model: (selectedLateralItem isProcessDefinition ifTrue:[selectedLateralItem] ifFalse: [selectedLateralItem process]).

	html div with: [html render: svgCanvas]