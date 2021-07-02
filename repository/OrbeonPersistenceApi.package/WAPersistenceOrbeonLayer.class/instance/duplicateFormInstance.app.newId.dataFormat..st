service-put
duplicateFormInstance: formName app: app newId: id dataFormat: dataFormatVersion 
	"This method is called by Orbeon when:
		* A user click 'Duplicate' in a Form Instance in the Form Runner
		* A user click 'Lease' or 'Reliquish Lease' in a Form Instance in the Form Runner"

	<put>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/data/{3}/data.xml?data-format-version={4}'>
	| apiOperation versionNumber |
	versionNumber := (self requestContext request 
				headerAt: 'orbeon-form-definition-version') ifNil: [1]
					ifNotNil: [:value | Number fromString: value].
	apiOperation := OrbeonFormInstanceDuplicateApi 
				newOn: self systemRoot
				withXml: (self requestContext request bodyDecodeUsing: 'utf-8')
				id: id.
	apiOperation
		appName: app;
		formName: formName;
		version: versionNumber;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doIt