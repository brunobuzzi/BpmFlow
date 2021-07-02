service-put
publishFormDefinition: formName app: app withId: documentId 
	"This method is called by Orbeon when a Form Definition has been published with form name <formName> in application <app> with form id <documentId>"

	<put>
	<consumes: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml?document={3}'>
	| apiOperation |
	apiOperation := OrbeonFormBuilderPublishApi 
				newOn: self systemRoot
				withXml: (self requestContext request bodyDecodeUsing: 'utf-8')
				id: documentId.
	apiOperation
		appName: app;
		formName: formName;
		headerVersion: (self requestContext request 
					headerAt: 'orbeon-form-definition-version');
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doItIfNotFound: 
			[OrbeonPersistenceApiException signal: 'Error performing the publishing']