service-get
getAllFormDefinitionVesionsFor: formName app: app allversions: allversionBoolean allforms: allformsBoolean 
	"Implemented as stated in: 
	https://doc.orbeon.com/form-runner/api/persistence/forms-metadata.html#returning-all-form-definition-versions"

	<get>
	<produces: 'application/xml'>
	<path: '/form/{2}/{1}?all-versions={3}&all-forms={4}'>
	| apiOperation |
	apiOperation := OrbeonAllFormDefinitionVersionsApi newOn: self systemRoot.
	apiOperation
		appName: app;
		formName: formName;
		allversions: allversionBoolean;
		allforms: allformsBoolean;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doIt