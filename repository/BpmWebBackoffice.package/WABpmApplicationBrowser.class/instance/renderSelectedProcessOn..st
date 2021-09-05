xpdl download
renderSelectedProcessOn: html
	| bpmnCanvas2 |

	bpmnCanvas2 := self session systemRoot newBpmnWebCanvasParent: self.
	bpmnCanvas2 model: selectedProcess.
	bpmnCanvas2 subProcess: selectedSubProcess.

	selectedSubProcess ifNil: [ "render back icon to all top process only when the current render process is no a subprocess"
		html div class: 'process-map-selected'; with: [
			html anchor 
					callback: [selectedProcess := nil];
					with: [html image url: (SEWAFIconLibrary / #arrowsupcircular32Png);
								title: ('Back' translateIn: self session);
								altText: ('Back' translateIn: self session)].
		].
	].

	html render: bpmnCanvas2