cg testExecuteProcess
create_testExecuteProcessMethodNamed: aString on: aStream for: aBpmProcessInstance methodsRepository: aDictionary
	"The receiver create a #testExecuteProcessXXX method named <aString> on <aStream> for process <aBpmProcessInstance> and store the method source in <aDictionary>.
	Note:
	To reproduce a BPM Process ALL transitions are enumerated and mots of <endArtifact>s are recreated.
	Not all elements need to be recreated for example events are created automatically when the out transition that the event generated is processed.
	Gateways also are recreated automatically when the BPM Process is set in motion."
	| processLog transitionEntries |

	aStream nextPutAll: aString; cr.
	processLog := aBpmProcessInstance asExecutionLog.
	transitionEntries := processLog getTransitionsEntries.

	self createTemporaryVariablesOn: aStream for: aBpmProcessInstance.
	self createProcessInstanceOn: aStream for: aBpmProcessInstance.
	self createTaskMatricesOn: aStream for: aBpmProcessInstance.
	
	transitionEntries keysAndValuesDo: [:index :eachEntry | | transition endArtifact |
		transition := eachEntry bpmObject.
		endArtifact := transition endArtifact.
		endArtifact isSubprocess "create a new test method for the subprocess "
		ifTrue: [ | methodName newStream |
			methodName := self getTestExecuteProcessMethodNameFor: endArtifact processInstance.
			newStream := String new writeStream.
			self create_testExecuteProcessMethodNamed: methodName on: newStream for: endArtifact processInstance methodsRepository: aDictionary.
			aStream tab;
				nextPutAll: 'self ', methodName, '.'; "this is the call to the new test method"
				cr.
		].
		endArtifact isTask ifTrue: [self createStepFor: endArtifact on: aStream index: index].
	]. 

	aDictionary at: aString put: aStream contents
"
(BpmProcessExecutionTestGenerator newOn:
(BpmProcessDefinition getProcessInstanceWithId: 1500319936))
create_formInstanceMethods.
"