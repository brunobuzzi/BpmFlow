render transitions
renderTriggerErrorEventOn: html from: aBpmArtifactInstance event: aBpmEventDefinition
	| jQueryId |

	jQueryId := self renderJQueryConfirmationDialogOn: html 
							title: 'Trigger Error Event' 
							forActionNamed: 'triggerErrorEvent' 
							actionMethod: #triggerErrorEvent:from:in: 
							arguments: (Array with: aBpmEventDefinition with: aBpmArtifactInstance with: model process).

	html anchor "callback: [self closeSendAndTakeNextForms: aBpmArtifactInstance];"
			class: 'cursor-pointer';
			onClick: (html jQuery id: jQueryId) dialog open;
			with: [html image url: (SEWAFIconLibrary / #emaildelete32Png); 
			title: ('Trigger Error Event' translateIn: self session);
			altText: ('Trigger Error Event' translateIn: self session)].