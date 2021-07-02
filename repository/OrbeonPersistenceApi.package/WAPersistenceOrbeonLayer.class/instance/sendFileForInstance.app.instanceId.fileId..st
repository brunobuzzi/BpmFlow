service-get
sendFileForInstance: formName app: app instanceId: instanceId fileId: fileId 
	"This service is called when rendering the form Instance in Form Instance page"

	<get>
	<produces: 'application/octet-stream'>
	<path: '/crud/{2}/{1}/data/{3}/{4}'>
	| apiOperation |
	apiOperation := OrbeonSendFormInstanceFileApi newOn: self systemRoot
				withId: instanceId.
	apiOperation
		fileId: fileId;
		appName: app;
		formName: formName;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	self requestContext response 
		contentType: WAMimeType applicationOctetStream.
	^apiOperation doIt