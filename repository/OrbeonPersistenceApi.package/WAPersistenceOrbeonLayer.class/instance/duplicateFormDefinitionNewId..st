service-put
duplicateFormDefinitionNewId: id 
	"This service duplicate the <OrbeonPublishedFormDefinition> contained in the request body with the new id <id>"

	<put>
	<produces: 'application/xml'>
	<path: '/crud/orbeon/builder/data/{1}/data.xml'>
	| apiOperation |
	apiOperation := OrbeonFormDefinitionDuplicateApi 
				newOn: self systemRoot
				withXml: (self requestContext request bodyDecodeUsing: 'utf-8')
				id: id.
	apiOperation
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doIt