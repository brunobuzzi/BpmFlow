service-get
sendFileForDefinitionWithId: definitionId fileId: fileId 
	"This service is called by Orbeon Form Builder to get/obtain the attached file with id <fileId> for the Form Definition <definitionId>.
	The service answer an octet stream to the caller."

	<get>
	<produces: 'application/octet-stream'>
	<path: '/crud/orbeon/builder/data/{1}/{2}'>
	| apiOperation |
	apiOperation := OrbeonSendFormDefinitionFileApi newOn: self systemRoot
				withId: definitionId.
	apiOperation
		fileId: fileId;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	self requestContext response 
		contentType: WAMimeType applicationOctetStream.
	^apiOperation doIt