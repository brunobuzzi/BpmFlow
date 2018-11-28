execute
doIt
	"The receiver set the external variables contained in the body <rawBody> of process definition id <processDefinitionId> in application named <appName> with id <processId>.
	If <processId> is 0 then the body <rawBody> it contain additional filters to get the <BpmProcessInstances>"
	| processInstance |

	[self parseXmlString] on: Exception do: [:ex | ^(BpmServiceXmlParseException newWith: xmlString) signal].
	processInstance := (processInstanceId = '0')
		ifTrue: [self getBpmProcessInstanceFromQuery] 
		ifFalse: [self getBpmProcessInstanceFromId].

	processInstance ifNil: [^(NoTargetProcessException newWith: nil xmlDocument: xmlDocument) signal: 'No Target Process Found']. 
	(processInstance class == Set) ifTrue: [^(MultipleTargetProcessesException newWith: processInstance xmlDocument: xmlDocument) signal: 'Multiple Target Processes Found']. 

	(self setExternalVariablesTo: processInstance) ifNil: [^(BadExternalVariableConfigException newWith: processInstance xmlDocument: xmlDocument) signal: 'Bad Set Configuration'].

	^self respondSetOk: processInstance