process
renderReleaseAssignmentOn: html
   | jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html title: 'Confirm Release' forActionNamed: 'releaseAssignment' actionMethod: #freeSelectedAssignment.

	html anchor 
		"callback: [self freeSelectedAssignment]; "
		class: 'cursor-pointer margin-left-5px';
		onClick: (html jQuery id: jQueryId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #gointo24Png); 
					title: ('Release Task' translateFor: self session user);
					altText: ('Release Task' translateFor: self session user)]