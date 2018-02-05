external variables
getBpmProcessInstanceOf: processName version: version in: appName withId: processId
	"The receiver answer <aBpmProcessInstance> of the process definition named <processName> with version <version> in application named <appName> with id <processId>.
	If there is none process answer <nil>"
	| processDefinition |

	processDefinition := BpmProcessDefinition getProcessNamed: processName version: version in: appName.
	processDefinition ifNil: [^nil].

	^processDefinition getProcessInstanceWith: processId ifAbsent: [nil]