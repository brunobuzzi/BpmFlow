other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	self removeFrom: 'env-st' in: 'st' processesName: #('Simple Registration') rolesName: #('approver' 'anonymous-user') usersName: #('alberto')