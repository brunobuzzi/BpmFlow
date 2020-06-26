service-post
newOrbeonFormId: id language: lan valid: valid app: app form: formName
	"POST service to process an Orben XML form with id <id> language <lan> for the OrbeonApplication named <app> for the OrbeonForm named <form>.
	1- Register the XML in the system and update Domain Objects.
	2- With data context inside the XML (inside the post) generate an url link to the previous page but with domain data updated.
	3- The POST service answer a HTML code with a redirect (with javascript) to the url build in step 2."
	| apiOperation newFormInstance |
	<post>
	<path: '/processform?document={1}&language={2}&valid={3}&app={4}&form={5}'>
	<produces: 'text/html'>

	apiOperation := BpmSendFormAndRedirectApi newWithId: id.
	apiOperation appName: app;
		formName: formName;
		language: lan;
		valid: valid.

	apiOperation doIt.

	newFormInstance := apiOperation orbeonFormInstance.

	"answer an HTML code with a redirect to the previous (but updated) page "
	^self generateHtmlFor: apiOperation bpmArtifact
			xml: newFormInstance xmlString 
			params: (Array with: newFormInstance id with: lan with: valid with: newFormInstance getApplicationName with: newFormInstance formName)