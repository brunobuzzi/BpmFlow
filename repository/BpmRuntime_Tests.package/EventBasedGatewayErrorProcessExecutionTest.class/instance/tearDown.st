other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	self removeFrom: 'env-ue' in: 'ue' processesName: #('House Purchase with Send Error' 'House Purchase with Loan') rolesName: #('seller' 'applicant' 'loan approver') usersName: #('andrew ap' 'andrew se' 'andrew la')