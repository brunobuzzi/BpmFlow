process state
renderPauseStateIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html title: 'Pause Process' forActionNamed: 'pauseSelectedProcess' actionMethod: #pauseSelectedProcess.

	selectedObject isPaused ifFalse: [
		html div class: 'float-left margin-left-5px'; with: [
			html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open; 
					with: [html image url: (SEWAFIconLibrary / #pause24Png); 
											title: ('Pause Process' translateFor: self session user); 
											altText: ('Pause Process' translateFor: self session user)]
		]
	].