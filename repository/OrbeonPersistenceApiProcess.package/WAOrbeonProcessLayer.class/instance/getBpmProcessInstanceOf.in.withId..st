external variables
getBpmProcessInstanceOf: processDefinitionId in: appName withId: processId
	"The receiver answer <aBpmProcessInstance> of the process definition with id <processDefinitionId> in application named <appName> with process instance id <processId>.
	If there is none process answer <nil>"
	| processDefinition |

	processDefinition := BpmProcessDefinition getProcessDefnitionWith: processDefinitionId in: appName.

	processDefinition ifNil: [^nil].

	^processDefinition getProcessInstanceWith: processId ifAbsent: [nil]