process
renderCloseAndSendAndSelectUsersIconOn: html for: aBpmArtifactInstance
	| jQueryId |

"	jQueryId := self renderJQueryConfirmationDialogOn: html 
							title: 'Close, Send and Assign' 
							forActionNamed: 'confirmCloseSendAndAssign' 
							actionMethod: #closeSendAndSelectUsers:
							arguments: (Array with: aBpmArtifactInstance)."

	html anchor "callback: [self closeSendAndSelectUsers: aBpmArtifactInstance]; "
			class: 'cursor-pointer';
			callback: [self closeSendAndSelectUsers: aBpmArtifactInstance];
			"onClick: (html jQuery id: jQueryId) dialog open;"
			with: [html image url: (SEWAFIconLibrary / #userarrowright32Png); 
			title: ('Close, Send & Select Users' translateFor: self session user);
			altText: ('Close, Send & Select Users' translateFor: self session user)].