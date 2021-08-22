other
formDefinitionColumn

	^SewafReportColumn 
		renderBlock: [:each :html | 
			html anchor
				target: '_blank';
				callback: [self requestContext redirectTo: (self session systemRoot generateEditUrlForDefinition: each)];
				with: each formName
		] 
		title: 'Form'