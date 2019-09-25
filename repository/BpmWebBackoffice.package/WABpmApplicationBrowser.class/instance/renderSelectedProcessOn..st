xpdl download
renderSelectedProcessOn: html
	| bpmnCanvas2 |

	bpmnCanvas2 := self defaultBpmnCanvasClass parent: self.
	bpmnCanvas2 model: selectedProcess.

	html div class: 'process-map-selected'; with: [
		html anchor 
				callback: [selectedProcess := nil];
				with: [html image url: (SEWAFIconLibrary / #arrowsupcircular32Png);
							title: ('Back' translateIn: self session);
							altText: ('Back' translateIn: self session)].
	].

	html render: bpmnCanvas2