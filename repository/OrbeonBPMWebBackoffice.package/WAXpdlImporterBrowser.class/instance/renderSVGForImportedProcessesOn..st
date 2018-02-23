svg
renderSVGForImportedProcessesOn: html

	(processGenerator notNil and: [processGenerator hasImportedProcesses]) ifFalse: [^self].

	processGenerator processes do: [:processDefinition |  
		html div class: 'imported-process'; with: [
			html anchor 
				class: 'cursor-pointer';
				callback: [self showSVGfor: processDefinition];
				with: [html image url: (SEWAFFileLibrary / #documentflowcharticonPng); 
						altText: (('View [', processDefinition processName, ']') translateFor: self session user); 
						title: (('View [', processDefinition processName, ']') translateFor: self session user).
			].
		].
	].