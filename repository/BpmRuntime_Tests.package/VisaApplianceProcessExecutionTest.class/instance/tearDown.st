other
tearDown
	| environment |

	super tearDown.

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	environment unregisterApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa manager' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa checker' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'finance officer' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'properties officer' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'debts officer' in: 'ue') removeFromCache.

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'visa-appliance' in: 'ue') do: [:each | each removeFromCache]. 
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue') removeFromCache.

	environment unregisterUser: (self getUserNamed: 'andrew vo').
	environment unregisterUser: (self getUserNamed: 'andrew vo2').
	environment unregisterUser: (self getUserNamed: 'andrew vo3').
	environment unregisterUser: (self getUserNamed: 'andrew vm').
	environment unregisterUser: (self getUserNamed: 'andrew vc').
	environment unregisterUser: (self getUserNamed: 'andrew fo').
	environment unregisterUser: (self getUserNamed: 'andrew po').
	environment unregisterUser: (self getUserNamed: 'andrew do').
	environment removeFromCache.