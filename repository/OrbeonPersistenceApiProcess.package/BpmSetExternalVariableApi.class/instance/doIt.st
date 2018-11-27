execute
doIt
	"The receiver set the external variables contained in the body <rawBody> of process definition id <processDefinitionId> in application named <appName> with id <processId>.
	If <processId> is 0 then the body <rawBody> it contain additional filters to get the <BpmProcessInstances>"
	| processInstance |

	[xmlDocument := XMLDOMParser parse: xmlString] on: Error do: [:ex | ^restHandler respondXmlParseError: xmlString].
	processInstance := (processInstanceId = '0')
		ifTrue: [self getBpmProcessInstanceFromQuery] 
		ifFalse: [self getBpmProcessInstanceFromId].

	processInstance ifNil: [^self respondProcessNotFound: processInstanceId]. 
	(processInstance class == Set) ifTrue: [^self respondMoreThanOneProcessFound: processInstance]. 

	(self setExternalVariablesTo: processInstance) ifNil: [^self respondBadExternalVariablesConfiguration: processInstance].

	^self respondSetOk: processInstance