xpdl download
renderSelectedProcessOn: html
	| bpmnCanvas2 |

	bpmnCanvas2 := WABpmnCanvasComposite parent: self.
	bpmnCanvas2 model: selectedProcess.

	html div class: 'process-map-selected'; with: [
		html anchor 
				callback: [selectedProcess := nil];
				with: [html image url: (SEWAFIconLibrary / #arrowsupcircular32Png);
							title: ('Back' translateFor: self session user);
							altText: ('Back' translateFor: self session user)].
	].

	html render: bpmnCanvas2