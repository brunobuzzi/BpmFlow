other
tearDown
	| environment |

	super tearDown.

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-st'.

	environment unregisterApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'approver' in: 'st') removeFromCache.

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'Simple Registration' in: 'st') do: [:each | each removeFromCache]. 
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st') removeFromCache.

	environment unregisterUser: (self getUserNamed: 'alberto').
	environment removeFromCache.