other
renderSVGDiagramOn: html
	| svgCanvas |

	html div class: 'margin-top-10px margin-left-10px'; with: [
		html anchor callback: [isSVGdiagramMode :=  false];
			with: [html image  url: (SEWAFIconLibrary / #arrowback432Png); altText: 'Back to Error List'; title: 'Back to Error List'].
	].

	svgCanvas := WAErrorReportBpmnCanvasComposite parent: self.
	svgCanvas importProcess: importProcess.

	html div with: [html render: svgCanvas]