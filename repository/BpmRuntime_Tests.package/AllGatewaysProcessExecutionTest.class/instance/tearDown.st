other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	self removeFrom: 'env-ue' in: 'ue' processesName: #('all gateways') rolesName: #('manager') usersName: #('alberto').