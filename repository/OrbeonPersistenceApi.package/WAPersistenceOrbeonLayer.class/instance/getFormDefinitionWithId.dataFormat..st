service-get
getFormDefinitionWithId: id dataFormat: dataFormatVersion
	"This service is called when a click is performed on the Orbeon Form Builder Summary page.
	The Summary then should open the Orbeon Builder with the code of the clicked form."
	<get>
	<produces: 'application/xml'>
	<path: '/crud/orbeon/builder/data/{1}/data.xml?data-format-version={2}'>

	^(OrbeonFormDefinitionSourceApi newOn: self systemRoot withId: id) 
			group: (self requestContext request headerAt: 'orbeon-group');
			user: (self requestContext request headerAt: 'orbeon-username');
			setUserCredentialsFrom: (self requestContext request headerAt: 'orbeon-credentials');
			doIt