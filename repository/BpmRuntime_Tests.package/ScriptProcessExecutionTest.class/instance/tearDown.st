other
tearDown
	| environment |

	super tearDown.

	Smalltalk removeKey: #Test_Temps ifAbsent: [].

	self keepTempObjectsInSystem ifTrue: [^self].

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	environment unregisterApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'manager' in: 'ue') removeFromCache.

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'Process with Scripts' in: 'ue') do: [:each | each resetFormFieldInstances; removeFromCache]. 
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue') resetDefinitionRegistry; removeFromCache.

	environment unregisterUser: (self getUserNamed: 'alberto').
	environment removeFromCache.