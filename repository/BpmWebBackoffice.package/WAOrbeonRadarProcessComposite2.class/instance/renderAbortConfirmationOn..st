process state
renderAbortConfirmationOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html title: 'Confirm Abortion' forActionNamed: 'confirmAbortSelectedProcess' actionMethod: #confirmAbortSelectedProcess.

	(selectedObject isAborted and: [selectedObject isConfirmed not]) ifTrue: [
		html div class: 'float-left margin-left-5px'; with: [
			html anchor
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open; 
					with: [html image url: (SEWAFIconLibrary / #delete24Png); 
											title: ('Confirm Abortion' translateFor: self session user); 
											altText: ('Confirm Abortion' translateFor: self session user)]
		]
	].