other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	testRoot removeFrom: 'env-ue' in: 'ue' processesName: #('task_timer_2') rolesName: #('timer-role') usersName: #('andrew vm')