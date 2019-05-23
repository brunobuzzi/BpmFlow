other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	self removeFrom: 'env-ue' in: 'ue' processName: #('ReusableEmbeddedProc') rolesName: #('administrator') usersName: #('alberto')