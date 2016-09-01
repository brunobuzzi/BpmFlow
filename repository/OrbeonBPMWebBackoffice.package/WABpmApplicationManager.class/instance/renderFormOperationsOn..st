other
renderFormOperationsOn: html
	| jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'deleteApplication' actionMethod: #deleteApplication.

	html submitButton 
		class: 'margin-right-20per';
		callback: [self newApplication]; 
		with: ('New Application' translateFor: self session user).

	html submitButton  
		"callback: [self deleteApplication]; "
		onClick: (html jQuery id: jQueryId) dialog open;
		with: ('Delete Application' translateFor: self session user).