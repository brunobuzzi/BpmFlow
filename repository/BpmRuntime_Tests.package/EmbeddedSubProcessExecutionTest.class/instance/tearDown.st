other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	self removeFrom: 'env-ue' in: 'ue' processesName: #('ReusableEmbeddedProc') rolesName: #('administrator') usersName: #('alberto')