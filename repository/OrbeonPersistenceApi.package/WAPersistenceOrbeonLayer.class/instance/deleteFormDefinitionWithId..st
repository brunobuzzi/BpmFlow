service-delete
deleteFormDefinitionWithId: id
	"This method is called by Orbeon when a user click 'Delete' in a Form Definition in the Form Runner page"
	<delete>
	<path: '/crud/orbeon/builder/data/{1}/data.xml'>

	^(OrbeonFormDefinitionDeleteApi newOn: self systemRoot withId: id) 
			group: (self requestContext request headerAt: 'orbeon-group');
			user: (self requestContext request headerAt: 'orbeon-username');
			setUserCredentialsFrom: (self requestContext request headerAt: 'orbeon-credentials');
			doIt