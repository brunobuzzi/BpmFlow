service-get
getToolboxForApplication: appName 
	"This method is called by Orbeon when the Form Builder is about to be Opened.
	It show the available -Library- forms for the application named <appName> "

	<get>
	<produces: 'application/xml'>
	<path: '/custom/{1}/builder/toolbox'>
	| apiOperation |
	apiOperation := OrbeonGetToolboxApi newOn: self systemRoot.
	apiOperation
		appName: appName;
		headerValue: (self requestContext request 
					headerAt: 'orbeon-form-definition-version');
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doItIfNotFound: [self noRouteFound: self requestContext]