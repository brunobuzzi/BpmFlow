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
					title: ('Delete All' translateIn: self session);
					altText: ('Delete All' translateIn: self session)].

	html anchor 
		class: 'cursor-pointer';
		onClick: (html jQuery id: jQueryId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #emaildelete24Png); 
					title: ('Delete Message' translateIn: self session);
					altText: ('Delete Message' translateIn: self session)].