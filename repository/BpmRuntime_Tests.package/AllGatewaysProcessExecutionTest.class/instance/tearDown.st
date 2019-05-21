other
tearDown
	| environment |

	super tearDown.

	environment := BpmEnvironment getExistingEnvironmentOrCreateNewNamed: 'env-ue'.
	environment unregisterApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'manager' in: 'ue') removeFromCache.

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'all gateways' in: 'ue') do: [:each | each removeFromCache]. 
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue') removeFromCache.

	environment unregisterUser: (self getUserNamed: 'alberto').
	environment removeFromCache.