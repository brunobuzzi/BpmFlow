service-get
sendFileForDraft: formName app: app draftId: draftId fileId: fileId 
	"This service is called when rendering the Draft of the form in Form Instance page"

	<get>
	<produces: 'application/octet-stream'>
	<path: '/crud/{2}/{1}/draft/{3}/{4}'>
	| apiOperation |
	apiOperation := OrbeonSendFormDraftFileApi newOn: self systemRoot
				withId: draftId.
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