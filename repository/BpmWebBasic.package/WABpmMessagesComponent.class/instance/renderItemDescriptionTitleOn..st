other
renderItemDescriptionTitleOn: html
	| jQueryId jQueryIdAll |

	html output: selectedLateralItem subject.

	jQueryId := self renderJQueryConfirmationDialogOn: html 
							title: 'Confirm Delete' 
							forActionNamed: 'deleteMessage' 
							actionMethod: #deleteMessage:
							arguments: (Array with: selectedLateralItem).

	jQueryIdAll := self renderJQueryConfirmationDialogOn: html 
							title: 'Confirm Delete All' 
							forActionNamed: 'deleteAllMessages' 
							actionMethod: #deleteAllMessages.
	html anchor 
		class: 'cursor-pointer';
		onClick: (html jQuery id: jQueryIdAll) dialog open;
		with: [html image url: (SEWAFIconLibrary / #remove24Png); 
					title: ('Delete All' translateFor: self session user);
					altText: ('Delete All' translateFor: self session user)].

	html anchor 
		class: 'cursor-pointer';
		onClick: (html jQuery id: jQueryId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #emaildelete24Png); 
					title: ('Delete Message' translateFor: self session user);
					altText: ('Delete Message' translateFor: self session user)].