service-put
receiveAndSaveFileForInstance: formName app: app instanceId: instanceId fileId: fileId valid: aBoolean 
	"This service is called from Orbeon Form Runner -new/edit- when a file is uploaded to a Form Instance.
	When the form is sent then all form's attachments are sent to this service"

	<put>
	<path: '/crud/{2}/{1}/data/{3}/{4}?valid={5}'>
	| apiOperation |
	apiOperation := OrbeonReceiveAndSaveInstanceFileApi newOn: self systemRoot
				withId: instanceId.
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