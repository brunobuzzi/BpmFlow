other
tearDown
	| environment |

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	environment unregisterApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'empry role' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'data-entry-1' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'data-entry-2' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'data-entry-3' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'approver' in: 'ue') removeFromCache.

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'multi-role' in: 'ue') do: [:each | each removeFromCache]. 
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue') removeFromCache.

	environment unregisterUser: (self getUserNamed: 'alberto').
	environment unregisterUser: (self getUserNamed: 'juan').
	environment unregisterUser: (self getUserNamed: 'mario').
	environment unregisterUser: (self getUserNamed: 'bruno').
	environment removeFromCache.