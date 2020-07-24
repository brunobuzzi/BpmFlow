cg tearDown
create_tearDownMethod
	| codeStream procArgsStream rolesArgsStream |

	codeStream := String new writeStream.
	codeStream nextPutAll: 'tearDown'; cr;cr;tab;
			nextPutAll: 'super tearDown.';cr;tab;
			nextPutAll: 	'self keepTempObjectsInSystem ifTrue: [^self].';
			cr.

	procArgsStream := String new writeStream.
	rolesArgsStream := String new writeStream.
	procArgsStream nextPutAll: '#('.
	rolesArgsStream nextPutAll: '#('.
 
	procInstance getProcessesTreeAsCollection do: [:eachProc | 
		procArgsStream nextPutAll: eachProc processName quoted , ' '.
		eachProc rolesDo: [:eachRole | rolesArgsStream nextPutAll: eachRole name quoted, ' ']. 
	].
	procArgsStream nextPutAll: ')'. 
	rolesArgsStream nextPutAll: ')'. 

	codeStream tab;
		nextPutAll: 'self removeFrom: ', self getBpmEnvironmentName quoted, ' in: ', self getApplicationName quoted;
		cr; tab;tab;
		nextPutAll: ' processesName: ', procArgsStream contents; 
		nextPutAll: ' rolesName: ', rolesArgsStream contents;
		cr; tab;tab;
		nextPutAll: ' usersName: #(''proc-user'').'.

	^self compile: codeStream in: newTestClass asMethodNamed: #tearDown category: self categoryNameOther


"It should produce:
	tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

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