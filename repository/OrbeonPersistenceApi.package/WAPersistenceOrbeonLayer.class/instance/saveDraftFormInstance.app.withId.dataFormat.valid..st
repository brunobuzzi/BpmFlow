service-put
saveDraftFormInstance: formName app: app withId: id dataFormat: dataFormatVersion valid: aBoolean 
	"This method is called by Orbeon when a Form is autosaved in a Form Instance page"

	<put>
	<produces: 'application/xml'>
	<
	path: '/crud/{2}/{1}/draft/{3}/data.xml?data-format-version={4}&valid={5}'>
	| apiOperation |
	apiOperation := OrbeonFormSaveDraftApi 
				newOn: self systemRoot
				withXml: (self requestContext request bodyDecodeUsing: 'utf-8')
				id: id.
	apiOperation
		appName: app;
		formName: formName;
		isValid: aBoolean;
		version: (Number fromString: (self requestContext request 
							headerAt: 'orbeon-form-definition-version'));
		modifiedUser: (self requestContext request headerAt: 'orbeon-username');
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doIt