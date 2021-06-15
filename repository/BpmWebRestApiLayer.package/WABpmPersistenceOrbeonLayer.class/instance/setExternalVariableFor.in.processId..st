service-post
setExternalVariableFor: processDefinitionId in: appName processId: processId
	"The receiver set the external variables contained in the body <rawBody> of process definition id <processDefinitionId> in application named <appName> with id <processId>.
	If <processId> is 0 then the body <rawBody> it contain additional filters to get the <BpmProcessInstances>"
	| apiOperation |
	<post>
	<path: '/setvariables?processdefnitionid={1}&app={2}&processid={3}'>
	<produces: 'application/xml'>

	apiOperation := BpmSetExternalVariableApi newOn: self systemRoot withXml: (self requestContext request bodyDecodeUsing: 'utf-8'). 
	apiOperation appName: appName;
		processDefinitionId: processDefinitionId;
		processInstanceId: processId.

	^apiOperation doIt