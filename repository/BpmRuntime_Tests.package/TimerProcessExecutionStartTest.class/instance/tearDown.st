other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	testRoot stopMonitoringProcessCreation: procDefinition.

	testRoot removeFrom: 'env-ue' in: 'ue' processesName: #('timer-process-start') rolesName: #('executer') usersName: #('andrew vm')