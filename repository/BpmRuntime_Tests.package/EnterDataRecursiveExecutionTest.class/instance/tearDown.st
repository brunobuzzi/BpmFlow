other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	self removeFrom: 'env-ue' in: 'ue' processesName: #('recursive-data') rolesName: #('typist' 'approver') usersName: #('andrew vo' 'andrew vm')