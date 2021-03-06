cg testExecuteProcess
createStepFor: aBpmTaskInstance on: aStream index: index
	| roleName |

	roleName := aBpmTaskInstance printFirstRoleName.
	aStream 
		cr;tab;
		nextPutAll: '"Step ', index printString,' - Form [';
		nextPutAll: aBpmTaskInstance externalObject formName;
		nextPutAll: ']" ';
		cr;tab;
		nextPutAll: 'currentTask := ', (aBpmTaskInstance process isTopProcess ifTrue: ['procInstance'] ifFalse: ['subProcess']),' currentActivities last.';
		cr;tab;
		nextPutAll: ('self assert: (currentTask getDefinitionName = ', aBpmTaskInstance externalObject formName quoted, ').');
		cr;tab;
		nextPutAll: 'self assert: (currentProcessMatrix getAvailableTasksFor: ', roleName quoted, ' satisfying: {:assign | assign.processId = processId}) notEmpty.';
		cr;tab;
		nextPutAll: 'self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: ';
		nextPutAll: self getDefaultUserName, ' withForm: self ';
		nextPutAll: (self getFromInstanceMethoNameFor: aBpmTaskInstance externalObject); 
		nextPutAll: ' on: ', (aBpmTaskInstance process isTopProcess ifTrue: ['procInstance'] ifFalse: ['subProcess']), '.';
		cr;tab;
		nextPutAll:  'currentTaskCount := (currentProcessMatrix getAvailableTasksFor: ', roleName quoted,' satisfying: {:assign | assign.processId = processId}) size.'; 
		cr;tab;
		nextPutAll:  'finishedTaskCount := (finishedProcessMatrix getAvailableTasksFor: ', roleName quoted,' satisfying: {:assign | assign.processId = processId}) size.'.