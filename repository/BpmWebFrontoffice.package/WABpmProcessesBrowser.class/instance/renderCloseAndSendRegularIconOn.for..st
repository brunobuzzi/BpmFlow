process
renderCloseAndSendRegularIconOn: html for: aBpmArtifactInstance
	| symbolIcon jQueryId |

	symbolIcon := aBpmArtifactInstance isFinishedByPerformers ifFalse: [#tasksicon32Png] ifTrue: [#emailsendiconPng].

	jQueryId := self renderJQueryConfirmationDialogOn: html 
							title: 'Close and Send' 
							forActionNamed: 'confirmCloseAndSend' 
							actionMethod: #closeAndSendForm:
							arguments: (Array with: aBpmArtifactInstance).

	html anchor "callback: [self closeAndSendForm: aBpmArtifactInstance]; "
			class: 'cursor-pointer';
			onClick: (html jQuery id: jQueryId) dialog open;
			with: [html image url: (SEWAFIconLibrary / symbolIcon); 
			title: ('Close & Send Form' translateIn: self session);
			altText: ('Close & Send Form' translateIn: self session)].