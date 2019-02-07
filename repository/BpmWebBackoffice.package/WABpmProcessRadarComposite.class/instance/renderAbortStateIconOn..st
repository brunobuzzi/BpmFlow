process state
renderAbortStateIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html title: 'Abort Process' forActionNamed: 'abortSelectedProcess' actionMethod: #abortSelectedProcess.

	selectedObject isAborted ifFalse: [
		html div class: 'float-left margin-left-5px'; with: [
			html anchor
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open; 
					with: [html image url: (SEWAFIconLibrary / #symboldelete24Png); 
											title: ('Abort Process' translateIn: self session); 
											altText: ('Abort Process' translateIn: self session)]
		]
	].