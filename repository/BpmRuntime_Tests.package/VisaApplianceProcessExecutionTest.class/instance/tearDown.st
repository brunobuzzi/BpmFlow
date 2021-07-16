other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	testRoot removeFrom: 'env-ue' in: 'ue' 
			processesName: #('visa-appliance' 'home-office-check' 'check-financial-data') 
			rolesName: #('visa officer' 'visa manager' 'visa checker' 'finance officer' 'properties officer' 'debts officer') 
			usersName: #('andrew vo' 'andrew vo2' 'andrew vo3' 'andrew vm' 'andrew vc' 'andrew fo' 'andrew po' 'andrew do' 'clark')
			deleteEnvironment: false.

	testRoot removeFrom: 'env-ue' in: 'app-test' 
			processesName: #() 
			rolesName: #('visa officer' 'visa manager') 
			usersName: #('andrew vo')
			deleteEnvironment: false.

	testRoot removeFrom: 'env-ue' in: 'app-test-2' 
			processesName: #() 
			rolesName: #('visa officer' 'visa manager') 
			usersName: #('andrew vo')
			deleteEnvironment: true.