process
renderCloseAndSendAndSelectUsersIconOn: html for: aBpmArtifactInstance
	| jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html 
							width: 600 
							height: 450 
							compositeInstance: (WAAssignTasksToUsers new finishedTask: aBpmArtifactInstance; yourself) 
							title: 'Assign Users'.

	self addValue: jQueryId named: 'jQueryId'.

	html anchor "callback: [self closeSendAndSelectUsers: aBpmArtifactInstance]; "
			class: 'cursor-pointer';
			onClick: (html jQuery id: jQueryId) dialog open;
			with: [html image url: (SEWAFIconLibrary / #userarrowright32Png); 
			title: ('Close, Send & Select Users' translateFor: self session user);
			altText: ('Close, Send & Select Users' translateFor: self session user)].