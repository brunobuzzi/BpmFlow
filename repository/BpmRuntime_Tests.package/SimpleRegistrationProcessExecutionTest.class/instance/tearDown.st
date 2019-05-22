other
tearDown
	| environment |

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-st'.

	environment unregisterApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'approver' in: 'st') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'anonymous-user' in: 'st') removeFromCache.

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'Simple Registration' in: 'st') do: [:each | each resetFormFieldInstances; removeFromCache]. 
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st') resetDefinitionRegistry; removeFromCache.

	environment unregisterUser: (self getUserNamed: 'alberto').
	environment removeFromCache.