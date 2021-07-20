other
getBpmProcessInstanceFromId
	"The receiver answer <aBpmProcessInstance> of the process definition with id <processDefinitionId> in application named <appName> with process instance id <processId>.
	If there is none process answer <nil>"
	| processDefinition procDefNumberId procInstNumberId |

	[procDefNumberId := Number fromString: processDefinitionId] on: Error do: [:ex | ^nil].

	processDefinition := systemRoot getProcessDefinitionWith: procDefNumberId in: appName.

	processDefinition ifNil: [^nil].

	[procInstNumberId := Number fromString: processInstanceId] on: Error do: [:ex | ^nil].

	^processDefinition getProcessInstanceWith: procInstNumberId ifAbsent: [nil]