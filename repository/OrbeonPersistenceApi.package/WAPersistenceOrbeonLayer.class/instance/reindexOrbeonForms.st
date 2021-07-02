service-get
reindexOrbeonForms
	"This service is called when a user click on ReIndex Database"

	<get>
	<path: '/reindex'>
	| apiOperation |
	apiOperation := OrbeonReIndexDatabaseApi newOn: self systemRoot.
	apiOperation
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doIt