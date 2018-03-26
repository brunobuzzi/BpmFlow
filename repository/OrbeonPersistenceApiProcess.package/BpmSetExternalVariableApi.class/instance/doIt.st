other
doIt
	"The receiver set the external variables contained in the body <rawBody> of process definition id <processDefinitionId> in application named <appName> with id <processId>.
	If <processId> is 0 then the body <rawBody> it contain additional filters to get the <BpmProcessInstances>"
	| processInstance |

	[xmlDocument := XMLDOMParser parse: xmlString] on: Error do: [:ex | ^restHandler respondXmlParseError: xmlString].
	processInstance := (processInstanceId = '0')
		ifTrue: [self getBpmProcessInstanceFromQuery] 
		ifFalse: [self getBpmProcessInstanceFromId].

	processInstance ifNil: [^restHandler respondProcessNotFound: processInstanceId query: xmlDocument]. 
	(processInstance class == Set) ifTrue: [^restHandler respondMoreThanOneProcessFound: processInstance query: xmlDocument]. 

	(self setExternalVariablesTo: processInstance) ifNil: [^restHandler respondBadExternalVariablesConfiguration: processInstance with: xmlDocument].

	^restHandler respondSetOk: processInstance query: xmlDocument