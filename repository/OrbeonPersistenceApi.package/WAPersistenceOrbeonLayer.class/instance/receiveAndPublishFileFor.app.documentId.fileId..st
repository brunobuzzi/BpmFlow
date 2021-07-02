service-put
receiveAndPublishFileFor: formName app: app documentId: documentId fileId: fileId 
	"This service is called when a user click -Publish- form in Orbeon Form Builder and the form definition has attached files.
	The Form Definition is <formName> in the Orbeon Application <app> where the id of the form definition is <documentId> and the attached file id is <fileId>.
	This service is called for each attached files in the Form Definition. 
	The attached file is stored in the repository"

	<put>
	<path: '/crud/{2}/{1}/form/{4}?document={3}'>
	| apiOperation |
	apiOperation := OrbeonReceiveAndPublishFileApi newOn: self systemRoot
				withId: documentId.
	apiOperation
		fileId: fileId;
		fileContents: self requestContext request rawBody;
		appName: app;
		formName: formName;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	^apiOperation doIt