*orbeonBPMXpdl
checkInterProcessCommunicationToSender: aXPDLTaskSendNode
	"The receiver check all configuration of <aXPDLTaskSendNode> to get possible missing elements that avoid to identify the target processes"
	| warnings targetApplication targetProcesses |

	warnings := OrderedCollection new.
	targetApplication := self getApplicationManagerClass getAnyApplicationNamed: aXPDLTaskSendNode getApplicationName ifNone: [nil].
	targetProcesses := BpmProcessDefinition getAllProcessesNamed: aXPDLTaskSendNode processName in: aXPDLTaskSendNode getApplicationName.
	
	targetApplication ifNil: [warnings add: (XPDLItemImportReport new 
											type: 'Error';
											title: 'Missing Target Application';
											description: 'Target Application in Task Send does NOT exist';
											solution: 'Change configuration of Task Send in Bizagi';
											yourself)].
	targetProcesses isEmpty ifTrue: [warnings add: (XPDLItemImportReport new 
																		type: 'Error';
																		title: 'Missing Target Process';
																		description: 'Target Application or Process in Task Send does NOT exist';
																		solution: 'Change configuration of Task Send in Bizagi';
																		yourself)].
	targetProcesses anySatisfy: [:procDefinition | 
			procDefinition getGatewayNamed: aXPDLTaskSendNode getGatewayName ifNone: [].
			procDefinition getIntermediateEventNamed: aXPDLTaskSendNode getEventName ifNone: [].
			aXPDLTaskSendNode getProcessIdField ifNotNil: [:idField | ].
	].

	^warnings