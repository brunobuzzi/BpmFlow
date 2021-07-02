service-get
getXmlOfFormInstanceWithId: id form: form app: app 
	"This service is called when a click is performed on the Orbeon Form Summary page.
	The Summary then should open the Form Instance (view/edit mode) in the corresponding form definition (template).
	This sevice is used in combination with #getDefinitionForFormInstanceWithId:form:app: that <get> the form definition (template) to the form with id <id>"

	<get>
	<produces: 'application/xml'>
	<path: '/crud/{3}/{2}/data/{1}/data.xml'>
	| apiOperation |
	apiOperation := OrbeonFormInstanceSourceApi newOn: self systemRoot
				withId: id.
	apiOperation
		appName: app;
		formName: form;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doItAndInjectPermissions: 
			[:permissionsString | 
			self requestContext response headerAt: 'orbeon-operations'
				put: permissionsString]