service-post
newOrbeonFormId: id processId: procId dataFormatVersion: dataFormatVersion language: lan valid: valid app: app formVersion: formVersion form: formName
	"POST service to process an Orbeon XML form with id <id> language <lan> for the <OrbeonApplication> named <app> for <OrbeonPublishedFormDefinition> named <form>.
	1- Register the XML in the system and update Domain Objects.
	2- With data context inside the XML (inside the post) generate an url link to the previous page but with domain data updated.
	3- The POST service answer a HTML code with a redirect (with javascript) to the url build in step 2."
	| apiOperation |
	<post>
	<path: '/processform?document={1}&process={2}&data-format-version={3}&language={4}&valid={5}&app={6}&form-version={7}&form={8}'>
	<produces: 'text/html'>

	apiOperation := BpmSendFormAndRedirectApi newFor: self id: id.
	apiOperation language: lan;
		valid: valid.

	^apiOperation doIt