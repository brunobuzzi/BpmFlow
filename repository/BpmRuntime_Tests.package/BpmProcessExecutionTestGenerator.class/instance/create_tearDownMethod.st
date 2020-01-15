teardown
create_tearDownMethod
	| stream argsStream |

	argsStream := String new writeStream.
	stream := String new writeStream.
	stream nextPutAll: 'tearDown'; cr;cr;tab;
			nextPutAll: 'super tearDown.';cr;tab;
			nextPutAll: 	'self keepTempObjectsInSystem ifTrue: [^self].';
			cr.


	procInstance getProcessesTreeAsCollection do: [:eachProc | 

	]. 
	stream tab;
		nextPutAll: 'self removeFrom: ', self getBpmEnvironmentName quoted, ' in: ', self getApplicationName quoted;
		nextPutAll: ' processesName: '; 
		nextPutAll: ' rolesName: ';
		nextPutAll: ' usersName: '.
	^self compile: stream asMethodNamed: #tearDown


"
(BpmProcessExecutionTestGenerator newOn:
(BpmProcessDefinition getProcessInstanceWithId: 3215866310))
create_tearDownMethod.

	self removeFrom: 'env-ue' in: 'ue' 
			processesName: #('visa-appliance' 'home-office-check' 'check-financial-data') 
			rolesName: #('visa officer' 'visa manager' 'visa checker' 'finance officer' 'properties officer' 'debts officer') 
			usersName: #('andrew vo' 'andrew vo2' 'andrew vo3' 'andrew vm' 'andrew vc' 'andrew fo' 'andrew po' 'andrew do').

	self removeFrom: 'env-test' in: 'app-test' 
			processesName: #() 
			rolesName: #('visa officer') 
			usersName: #('andrew vo').

	self removeFrom: 'env-test' in: 'app-test-2' 
			processesName: #() 
			rolesName: #('visa officer') 
			usersName: #('andrew vo').
"