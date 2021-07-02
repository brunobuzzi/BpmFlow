service-put
publishFormDefinition: formName app: app
	"This method is called by Orbeon when a Form Definition has been published with form name <formName> in application <app>"
	| apiOperation request |
	<put>
	<path: '/crud/{2}/{1}/form/form.xhtml'>

	request := self requestContext request.
	apiOperation := OrbeonFormBuilderPublishUpdateApi newOn: self systemRoot withXml: (request bodyDecodeUsing: 'utf-8').
	apiOperation
		appName: app;
		formName: formName;
		headerVersion: (request headerAt: 'orbeon-form-definition-version');
		group: (request headerAt: 'orbeon-group');
		user: (request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (request headerAt: 'orbeon-credentials').

	^apiOperation doItIfNotFound: [OrbeonPersistenceApiException signal: 'Error performing the publishing'].