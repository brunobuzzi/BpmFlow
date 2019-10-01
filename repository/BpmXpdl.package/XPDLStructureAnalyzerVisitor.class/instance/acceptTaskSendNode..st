xpdl tasks
acceptTaskSendNode: aXPDLTaskSendNode
	"The receiver check for:
	* Existence of the target application 
	* Existence of the target processes
	* Existence of the target gateway and target event"
	| targetApplication targetProcesses |

	targetApplication := self defaultApplicationManagerClass getAnyApplicationNamed: aXPDLTaskSendNode getApplicationName ifNone: [nil].
	targetProcesses := self defaultProcessDefinitionClass getAllProcessesNamed: aXPDLTaskSendNode getProcessName in: aXPDLTaskSendNode getApplicationName.

	targetApplication ifNil: [self addMissingTargetApplicationItem: aXPDLTaskSendNode].
	targetProcesses isEmpty ifTrue: [self addMissingTargetProcessesItem: aXPDLTaskSendNode].

	targetProcesses detect: [:procDefinition | (procDefinition getGatewayNamed: aXPDLTaskSendNode getGatewayName ifNone: [nil]) notNil and: [
																(procDefinition getIntermediateEventNamed: aXPDLTaskSendNode getEventName ifNone: []) notNil]]
							ifNone: [self addMissingGatewayOrEventItem: aXPDLTaskSendNode].

	self acceptActivityNode: aXPDLTaskSendNode.