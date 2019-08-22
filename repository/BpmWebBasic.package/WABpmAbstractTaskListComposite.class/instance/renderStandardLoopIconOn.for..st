render transitions
renderStandardLoopIconOn: html for: aBpmArtifactInstance
	| jQueryId |

	html div class: 'float-right'; with: [
		jQueryId := self renderJQueryConfirmationDialogOn: html 
								title: 'Finalize and Loop' 
								forActionNamed: 'finalizeAndLoop' 
								actionMethod: #finalizeAndLoop:
								arguments: (Array with: aBpmArtifactInstance).

		html anchor "callback: [self closeAndSendForm: aBpmArtifactInstance]; "
				class: 'cursor-pointer';
				onClick: (html jQuery id: jQueryId) dialog open;
				with: [html image url: (SEWAFIconLibrary / #buttonsync32Png); 
				title: ('Finalize & Loop' translateIn: self session);
				altText: ('Finalize & Loop' translateIn: self session)].
	].