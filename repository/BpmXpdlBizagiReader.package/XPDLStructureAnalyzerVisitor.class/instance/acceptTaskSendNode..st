tasks
acceptTaskSendNode: aXPDLTaskSendNode
	| targetApplication targetProcesses |

	targetApplication := self getApplicationManagerClass getAnyApplicationNamed: aXPDLTaskSendNode getApplicationName ifNone: [nil].
	targetProcesses := BpmProcessDefinition getAllProcessesNamed: aXPDLTaskSendNode processName in: aXPDLTaskSendNode getApplicationName.

	targetApplication ifNil: [self addMissingTargetApplicationItem].
	targetProcesses isEmpty ifTrue: [self addMissingTargetProcessesItem].

	targetProcesses detect: [:procDefinition | (procDefinition getGatewayNamed: aXPDLTaskSendNode getGatewayName ifNone: [nil]) notNil and: [
																(procDefinition getIntermediateEventNamed: aXPDLTaskSendNode getEventName ifNone: []) notNil]]
							ifNone: [self addMissingGatewayOrEventItem].

	self acceptActivityNode: aXPDLTaskSendNode.