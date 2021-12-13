other
tearDown


	(testRoot getRolesInAppName: self defaultApplicationName) do: [:each | self getDefaultApplication removeRole: each ifAbsent: [self assert: false]].

	self getDefaultApplication resetDefinitionRegistry.

	testRoot removeFrom: 'env-test' in: self defaultApplicationName processesName: #('dashboard-process-with-loop') rolesName: #('dashboard-manager') usersName: #().

	super tearDown.