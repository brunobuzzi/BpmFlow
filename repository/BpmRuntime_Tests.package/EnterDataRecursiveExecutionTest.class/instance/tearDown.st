other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	testRoot removeFrom: 'env-ue' in: 'ue' processesName: #('recursive-data') rolesName: #('typist' 'approver') usersName: #('andrew vo' 'andrew vm')