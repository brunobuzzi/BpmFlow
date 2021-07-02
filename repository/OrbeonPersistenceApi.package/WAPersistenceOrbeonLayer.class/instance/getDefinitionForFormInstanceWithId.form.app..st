service-get
getDefinitionForFormInstanceWithId: id form: form app: app 
	"This service is called when a click is performed on the Orbeon Form Summary page (or go directly to edit/view page of a form). The Summary then open the Form Instance in it's corresponding form definition.
	This service is used in combination of #getXmlOfFormInstanceWithId:form:app: to <get> the actual data of the form"

	<get>
	<produces: 'application/xml'>
	<path: '/crud/{3}/{2}/form/form.xhtml?document={1}'>
	| apiOperation |
	apiOperation := OrbeonDefinitionForFormInstanceApi newOn: self systemRoot
				withId: id.
	apiOperation
		appName: app;
		formName: form;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doItAndSetVersion: 
			[:versionString | 
			self requestContext response headerAt: 'orbeon-form-definition-version'
				put: versionString]