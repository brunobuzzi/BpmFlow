service-put
receiveAndSaveFileForDefinitionWithId: definitionId fileId: fileId valid: aBoolean 
	"This service receives a file with id <fileId> from Orbeon Form Builder when the a user clicked -Save-.
	The file was uploaded into a Form Definition as a Custom PDF or as direct file Upload.
	A direct file upload is when a File Attachment is added to a Form Definition and a concrete file is also uploaded"

	<put>
	<path: '/crud/orbeon/builder/data/{1}/{2}.bin?valid={3}'>
	| apiOperation |
	apiOperation := OrbeonReceiveAndSaveDefinitionFileApi 
				newOn: self systemRoot
				withId: definitionId.
	apiOperation
		fileId: fileId;
		fileContents: self requestContext request rawBody;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doIt