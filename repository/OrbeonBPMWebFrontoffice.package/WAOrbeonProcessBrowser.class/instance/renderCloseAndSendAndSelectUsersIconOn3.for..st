process
renderCloseAndSendAndSelectUsersIconOn3: html for: aBpmArtifactInstance
	| jQueryId popupComponent |

	popupComponent := WAAssignTasksToUsers parent: self on: (OrderedCollection with: aBpmArtifactInstance).
	popupComponent finishedTask: aBpmArtifactInstance .
	jQueryId := self renderJQueryPopupCompositeOn: html 
							width: 600 
							height: 450 
							compositeInstance: popupComponent 
							title: 'Assign Users'.

	self addValue: jQueryId named: 'jQueryId'.

	html anchor "callback: [self closeSendAndSelectUsers: aBpmArtifactInstance]; "
			class: 'cursor-pointer';
			onClick: (html jQuery id: jQueryId) dialog open;
			with: [html image url: (SEWAFIconLibrary / #userarrowright32Png); 
			title: ('Close, Send & Select Users' translateFor: self session user);
			altText: ('Close, Send & Select Users' translateFor: self session user)].