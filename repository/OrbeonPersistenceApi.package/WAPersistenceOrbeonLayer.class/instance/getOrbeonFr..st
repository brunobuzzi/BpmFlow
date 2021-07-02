service-get
getOrbeonFr: allVersions
	"This service is called when accessing Form Runner Home: ../orbeon/fr/ "
	<get>
	<produces: 'application/xml'>
	<path: '/form?all-versions={1}'>

	^(OrbeonFrPageApi newOn: self systemRoot)
			group: (self requestContext request headerAt: 'orbeon-group');
			user: (self requestContext request headerAt: 'orbeon-username');
			setUserCredentialsFrom: (self requestContext request headerAt: 'orbeon-credentials');
			doIt