other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	self removeFrom: 'env-ue' in: 'ue' processesName: #('House Loan 3' 'House Purchase with Loan 3') rolesName: #('seller' 'applicant' 'loan approver') usersName: #('andrew ap' 'andrew se' 'andrew la')