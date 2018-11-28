process
renderCloseAndSendAndSelectUsersIconOn: html for: aBpmArtifactInstance

	html anchor
			class: 'cursor-pointer';
			callback: [self closeSendAndSelectUsers: aBpmArtifactInstance];
			"onClick: (html jQuery id: jQueryId) dialog open;"
			with: [html image url: (SEWAFIconLibrary / #userarrowright32Png); 
			title: ('Close, Send & Select Users' translateFor: self session user);
			altText: ('Close, Send & Select Users' translateFor: self session user)].