other
renderCloseAndSendAndTakeNextIconOn: html for: aBpmArtifactInstance
	| jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html 
							title: 'Close, Send and Take' 
							forActionNamed: 'confirmCloseSendAndTake' 
							actionMethod: #closeSendAndTakeNextForms:
							arguments: (Array with: aBpmArtifactInstance).

	html anchor "callback: [self closeSendAndTakeNextForms: aBpmArtifactInstance];"
			class: 'cursor-pointer';
			onClick: (html jQuery id: jQueryId) dialog open;
			with: [html image url: (SEWAFIconLibrary / #applicationarrowright32Png); 
			title: ('Close, Send & Take Next Forms' translateIn: self session);
			altText: ('Close, Send & Take Next Forms' translateIn: self session)].