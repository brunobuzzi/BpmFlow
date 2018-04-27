other
renderItemDescriptionTitleOn: html
	| jQueryId |

	html output: selectedLateralItem subject.

	jQueryId := self renderJQueryConfirmationDialogOn: html 
							title: 'Close and Send' 
							forActionNamed: 'deleteMessage' 
							actionMethod: #deleteMessage:
							arguments: (Array with: selectedLateralItem).
	html anchor 
		class: 'cursor-pointer';
		onClick: (html jQuery id: jQueryId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #remove24Png); 
					title: ('Delete' translateFor: self session user);
					altText: ('Delete' translateFor: self session user)].