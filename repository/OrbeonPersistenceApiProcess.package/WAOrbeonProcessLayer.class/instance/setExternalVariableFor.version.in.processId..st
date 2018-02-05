service-post
setExternalVariableFor: processName version: version in: appName processId: processId
	"The receiver set the external variables contained in the body <rawBody> of process named <processName> version <version> in application named <appName> with id <processId>.
	If <processId> is 0 then the body <rawBody> it contain additional filters to get the <BpmProcessInstances>"
	| processInstance xmlDocument |
	<post>
	<path: '/setvariables?processname={1}&version={2}&app={3}&processid={4}'>
	<produces: 'application/xml'>

	[xmlDocument := XMLDOMParser parse: self requestContext request rawBody] on: Error do: [:ex | ^self respondXmlParseError: self requestContext request rawBody].
	
	processInstance := (processId = 0)
		ifTrue: [self getBpmProcessInstanceOf: processName version: version in: appName withQuery: xmlDocument] 
		ifFalse: [self getBpmProcessInstanceOf: processName version: version in: appName withId: processId].

	processInstance ifNil: [^self respondProcessNotFound: processId query: xmlDocument]. 

	self setExternalVariablesTo: processInstance with: xmlDocument.

	^self respondSetOk: processId query: xmlDocument