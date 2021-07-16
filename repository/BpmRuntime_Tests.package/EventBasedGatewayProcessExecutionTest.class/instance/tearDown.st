other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	testRoot removeFrom: 'env-ue' in: 'ue' processesName: #('House Loan' 'House Purchase with Loan') rolesName: #('seller' 'applicant' 'loan approver') usersName: #('andrew ap' 'andrew se' 'andrew la')