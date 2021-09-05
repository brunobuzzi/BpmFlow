other
renderSvgProcessMapOn: html
	| svgCanvas |

	svgCanvas := self session systemRoot newBpmnWebCanvasParent: self.

	svgCanvas model: (selectedLateralItem isProcessDefinition ifTrue:[selectedLateralItem] ifFalse: [selectedLateralItem process]).
	svgCanvas isLinkToSubprocessAvailable: selectedLateralItem isProcessDefinition.

	html div with: [html render: svgCanvas]