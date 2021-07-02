service-put
saveFinalFormInstance: formName app: app withId: id dataFormat: dataFormatVersion valid: aBoolean 
	"This method is called by Orbeon when a user click 'Send' in a Form Instance page"

	<put>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/data/{3}/data.xml?data-format-version={4}&valid={5}'>
	| apiOperation version |
	version := (
			[Number fromString: (self requestContext request 
						headerAt: 'orbeon-form-definition-version')] 
					on: Error
					do: [:ex | nil]) ifNil: [1] ifNotNil: [:value | value].
	apiOperation := OrbeonFormSaveFinalApi 
				newOn: self systemRoot
				withXml: (self requestContext request bodyDecodeUsing: 'utf-8')
				id: id.
	apiOperation
		appName: app;
		formName: formName;
		isValid: aBoolean;
		version: version;
		modifiedUser: (self requestContext request headerAt: 'orbeon-username');
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doIt