other
tearDown
	| environment |

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	environment unregisterApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'user' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'approver' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'form-admin' in: 'ue') removeFromCache.

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'reuse-form' in: 'ue') do: [:each | each removeFromCache]. 
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue') removeFromCache.

	environment unregisterUser: (self getUserNamed: 'andrew vo').
	environment unregisterUser: (self getUserNamed: 'andrew vm').
	environment unregisterUser: (self getUserNamed: 'andrew vc').
	environment removeFromCache.