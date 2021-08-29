*bpmxpdl
checkInterProcessCommunicationToSender: aXPDLTaskSendNode on: aBpmSystemRoot
	"The receiver check all configuration of <aXPDLTaskSendNode> to get possible missing elements that avoid to identify the target processes"
	| warnings targetApplication targetProcesses |

	warnings := OrderedCollection new.
	targetApplication := aBpmSystemRoot applicationNamed: aXPDLTaskSendNode getApplicationName ifNone: [nil].
	targetProcesses := aBpmSystemRoot getAllProcessesNamed: aXPDLTaskSendNode processName in: aXPDLTaskSendNode getApplicationName.
	
	targetApplication ifNil: [warnings add: (self xpdlItemReportClass new 
															code: 500;
															type: 'Error';
															offendingXpdlObject: aXPDLTaskSendNode;
															title: 'Missing Target Application';
															description: 'Target Application in Task Send does NOT exist';
															solution: 'Change configuration of Task Send in Bizagi';
															yourself)].
	targetProcesses isEmpty ifTrue: [warnings add: (self xpdlItemReportClass new 
																		code: 504;
																		type: 'Error';
																		offendingXpdlObject: aXPDLTaskSendNode;
																		title: 'Missing Target Process';
																		description: 'Target Application or Process in Task Send does NOT exist';
																		solution: 'Change configuration of Task Send in Bizagi';
																		yourself)].
	targetProcesses detect: [:procDefinition | 
										(procDefinition getGatewayNamed: aXPDLTaskSendNode getGatewayName ifNone: [nil]) notNil and: [
										(procDefinition getIntermediateEventNamed: aXPDLTaskSendNode getEventName ifNone: []) notNil]]
							ifNone: [warnings add: (self xpdlItemReportClass new 
																		code: 508;
																		type: 'Error';
																		offendingXpdlObject: aXPDLTaskSendNode;
																		title: 'Missing Gateway or Event';
																		description: 'Target Process does NOT have configured Gateway or Event';
																		solution: 'Change configuration of Task Send in Bizagi';
																		yourself)].
	^warnings