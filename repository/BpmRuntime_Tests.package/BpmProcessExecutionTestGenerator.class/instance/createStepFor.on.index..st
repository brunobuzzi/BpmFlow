cg testExecuteProcess
createStepFor: aBpmTaskInstance on: aStream index: index
	| roleName |

	roleName := aBpmTaskInstance printFirstRoleName.
	aStream tab;
		nextPutAll: '"Step ', index printString,' - Form [';
		nextPutAll: aBpmTaskInstance externalObject formName;
		nextPutAll: ']" ';
		cr;tab;
		nextPutAll: ('self assert: (currentTask getDefinitionName = ', aBpmTaskInstance externalObject formName quoted, ').');
		cr;tab;
		nextPutAll: 'currentTask := procInstance currentActivities last.';
		cr;tab;
		nextPutAll: 'self assert: (currentProcessMatrix getAvailableTasksFor: ', self getDefaultUserName, ' satisfying: {:assign | assign.processId = processId}) notEmpty.';
		cr;tab;
		nextPutAll: 'self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: ';
		nextPutAll: self getDefaultUserName, ' withForm: self ';
		nextPutAll: (self getFromInstanceMethoNameFor: aBpmTaskInstance externalObject); 
		nextPutAll: ' on: ', (aBpmTaskInstance process isTopProcess ifTrue: ['procInstance'] ifFalse: ['subProcess']), '.';
		cr.