service-put
receiveAndSaveFileForDraft: formName app: app draftId: draftId fileId: fileId dataFormat: dataFormatVersion valid: aBoolean 
	"This service is called from Orbeon Form Runner -new/edit- when a file is uploaded (and autosave is -true-) to a Form Instance.
	When the form is autosaved then all form's attachments are sent to this service "

	<put>
	<path: '/crud/{2}/{1}/draft/{3}/{4}?valid={6}&data-format-version={5}'>
	| apiOperation |
	apiOperation := OrbeonReceiveAndSaveDraftFileApi newOn: self systemRoot
				withId: draftId.
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