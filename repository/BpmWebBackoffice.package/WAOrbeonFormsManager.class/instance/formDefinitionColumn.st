other
formDefinitionColumn

	^SewafReportColumn 
		renderBlock: [:each :html | 
			html anchor
				target: '_blank';
				callback: [self requestContext redirectTo: (self getOrbeonWebServerConfiguration orbeonIP,  '/orbeon/fr/orbeon/builder/edit/', each id)];
				with: each formName
		] 
		title: 'Form'