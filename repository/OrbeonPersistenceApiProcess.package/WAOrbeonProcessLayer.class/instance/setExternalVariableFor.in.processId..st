service-post
setExternalVariableFor: processDefinitionId in: appName processId: processId
	"The receiver set the external variables contained in the body <rawBody> of process definition id <processDefinitionId> in application named <appName> with id <processId>.
	If <processId> is 0 then the body <rawBody> it contain additional filters to get the <BpmProcessInstances>"
	| apiOperation |
	<post>
	<path: '/setvariables?processdefnitionid={1}&app={2}&processid={3}'>
	<produces: 'application/xml'>

	apiOperation := BpmSetExternalVariableApi newFor: self withXml: self requestContext request rawBody. 
	apiOperation processDefinitionId: processDefinitionId;
		processInstanceId: processId.

	^apiOperation doIt