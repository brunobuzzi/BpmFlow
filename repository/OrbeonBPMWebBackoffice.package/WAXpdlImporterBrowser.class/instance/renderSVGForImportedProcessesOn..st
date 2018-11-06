import
renderSVGForImportedProcessesOn: html

	model generatedProcesses do: [:processDefinition |  
		html div class: 'imported-process'; with: [ | popUpComponent jQueryId |
			popUpComponent := WAProcessViewerSelector parent: self process: processDefinition.
			jQueryId := self renderJQueryPopupCompositeOn: html width: 450 height: 260 compositeInstance: popUpComponent title: 'Select Process Viewer'.
			html anchor 
				class: 'cursor-pointer';
				onClick: (html jQuery id: jQueryId) dialog open;
				with: [html image url: (SEWAFIconLibrary / #documentflowcharticonPng); 
						altText: (('View [', processDefinition processName, ']') translateFor: self session user); 
						title: (('View [', processDefinition processName, ']') translateFor: self session user).
			].
		].
	].

	html div id: 'imported-processes-confirmation'; with: [
		html anchor 
			class: 'cursor-pointer';
			callback: [self storeBpmProcessDefinition];
			with: [html image url: (SEWAFIconLibrary / #actionsdocumentsaveas48pngPng); 
					altText: ('Proceed with Import Process' translateFor: self session user); 
					title: ('Proceed with Import Process' translateFor: self session user).
			].
	].