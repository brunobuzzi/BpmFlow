other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	testRoot removeFrom: 'env-ue' in: 'ue' processesName: #('House Loan 2' 'House Purchase with Loan 2') rolesName: #('seller' 'applicant' 'loan approver') usersName: #('andrew ap' 'andrew se' 'andrew la')