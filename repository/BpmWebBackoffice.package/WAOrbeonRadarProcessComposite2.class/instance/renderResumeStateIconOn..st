process state
renderResumeStateIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html title: 'Resume Process' forActionNamed: 'resumeSelectedProcess' actionMethod: #resumeSelectedProcess.

	selectedObject isRunning ifFalse: [
		html div class: 'float-left margin-left-5px'; with: [
			html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open; 
					with: [html image url: (SEWAFIconLibrary / #continue24Png); 
											title: ('Resume Process' translateFor: self session user); 
											altText: ('Resume Process' translateFor: self session user)]
		]
	].