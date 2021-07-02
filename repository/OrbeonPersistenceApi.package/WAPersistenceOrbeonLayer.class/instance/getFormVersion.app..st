service-get
getFormVersion: formName app: app 
	"This method is called by Orbeon when a Form Definition (inside the Builder) is about to be Published.
	This method answer the latest version of the form definition <formName> in application <app>.
	Using the header <orbeon-form-definition-version> to set the version number.
	It also called when a new Form Instance page is about to be displayed (app/form/new)"

	<get>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml'>
	| apiOperation |
	apiOperation := OrbeonPublishedFormDefinitionSourceApi 
				newOn: self systemRoot.
	apiOperation
		appName: app;
		formName: formName;
		headerVersionValue: (self requestContext request 
					headerAt: 'orbeon-form-definition-version');
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doItAndSetVersion: 
			[:versionString | 
			self requestContext response headerAt: 'orbeon-form-definition-version'
				put: versionString]
		ifNotFound: [self noRouteFound: self requestContext]