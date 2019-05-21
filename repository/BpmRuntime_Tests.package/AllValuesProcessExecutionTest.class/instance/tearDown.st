other
tearDown
	| environment |

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	environment unregisterApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'data-entry' in: 'ue') removeFromCache.

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'all values' in: 'ue') do: [:each | each removeFromCache]. 
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue') removeFromCache.

	environment unregisterUser: (self getUserNamed: 'andrew vo').
	environment removeFromCache.