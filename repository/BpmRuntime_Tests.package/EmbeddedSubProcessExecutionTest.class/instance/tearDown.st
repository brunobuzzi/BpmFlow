other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	self removeFrom: 'env-ue' in: 'ue' processesName: #('ReusableEmbeddedProc' 'embedded-sub-proc' 'reusable-sub-proc') rolesName: #('administrator') usersName: #('alberto')