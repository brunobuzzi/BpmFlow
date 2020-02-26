other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	self removeFrom: 'env-ue' in: 'ue' processesName: #('multi-embedded' 'embedded 01' 'embedded 02') rolesName: #('administrator') usersName: #('alberto')