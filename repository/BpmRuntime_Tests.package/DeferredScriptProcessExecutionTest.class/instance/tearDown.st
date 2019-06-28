other
tearDown

	super tearDown.

	Smalltalk removeKey: #Test_Temps ifAbsent: [].

	self keepTempObjectsInSystem ifTrue: [^self].

	self removeFrom: 'env-ue' in: 'ue' processesName: #('Process with Scripts') rolesName: #('manager') usersName: #('alberto')