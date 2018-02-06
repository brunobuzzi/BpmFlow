service-post
setExternalVariableFor: processDefinitionId version: version in: appName processId: processId
	"The receiver set the external variables contained in the body <rawBody> of process definition id <processDefinitionId> version <version> in application named <appName> with id <processId>.
	If <processId> is 0 then the body <rawBody> it contain additional filters to get the <BpmProcessInstances>"
	| processInstance xmlDocument |
	<post>
	<path: '/setvariables?processdefnitionid={1}&version={2}&app={3}&processid={4}'>
	<produces: 'application/xml'>

	[xmlDocument := XMLDOMParser parse: self requestContext request rawBody] on: Error do: [:ex | ^self respondXmlParseError: self requestContext request rawBody].
	
	processInstance := (processId = 0)
		ifTrue: [self getBpmProcessInstanceOf: processDefinitionId in: appName withQuery: xmlDocument] 
		ifFalse: [self getBpmProcessInstanceOf: processDefinitionId in: appName withId: processId].

	processInstance ifNil: [^self respondProcessNotFound: processId query: xmlDocument]. 
	(processInstance class == Set) ifTrue: [^self respondMoreThanOneProcessFound: processInstance query: xmlDocument]. 

	self setExternalVariablesTo: processInstance with: xmlDocument.

	^self respondSetOk: processInstance query: xmlDocument