process
renderCloseAndSendIconOn: html for: aBpmArtifactInstance
	| symbolIcon |

	symbolIcon := aBpmArtifactInstance isFinishedByPerformers ifFalse: [#tasksicon32Png] ifTrue: [#emailsendiconPng].

	html anchor callback: [self closeAndSendForm: aBpmArtifactInstance]; 
								with: [html image url: (SEWAFIconLibrary / symbolIcon); 
														title: ('Close & Send Form' translateFor: self session user);
														altText: ('Close & Send Form' translateFor: self session user)].

	html anchor callback: [self closeSendAndTakeNextForms: aBpmArtifactInstance]; 
								with: [html image url: (SEWAFIconLibrary / #applicationarrowright32Png); 
														title: ('Close & Send & Take Next Forms' translateFor: self session user);
														altText: ('Close & Send & Take Next Forms' translateFor: self session user)].