cg testExecuteProcess
create_testExecuteProcessMethodNamed: aString on: aStream for: aBpmProcessInstance methodsRepository: aDictionary
	"The receiver create a #testExecuteProcessXXX method named <aString> on <aStream> for process <aBpmProcessInstance> and store the method source in <aDictionary>.
	Note: the current implementation only reproduce Task and Subprocess and exclude Gateways, Events and Scripts"
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