other
tearDown
	| environment |

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	environment unregisterApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'seller' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'applicant' in: 'ue') removeFromCache.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'loan approver' in: 'ue') removeFromCache.

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'House Loan 2' in: 'ue') do: [:each | each resetFormFieldInstances; removeFromCache]. 
	(self defaultProcessDefinitionClass getAllProcessesNamed: 'House Purchase with Loan 2' in: 'ue') do: [:each | each resetFormFieldInstances; removeFromCache]. 
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue') resetDefinitionRegistry; removeFromCache.

	environment unregisterUser: (self getUserNamed: 'andrew ap').
	environment unregisterUser: (self getUserNamed: 'andrew se').
	environment unregisterUser: (self getUserNamed: 'andrew la').
	environment removeFromCache.