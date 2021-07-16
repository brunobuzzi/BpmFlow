other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	testRoot removeFrom: 'env-ue' in: 'ue' processesName: #('multi-role-with-loop') rolesName: #('empty role' 'data-entry-1' 'data-entry-2' 'data-entry-3' 'approver' 'data-entry-manager') usersName: #('alberto' 'juan' 'mario' 'bruno')