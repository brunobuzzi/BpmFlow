other
tearDown
	| environment |

	super tearDown.

	self keepTempObjectsInSystem ifTrue: [^self].

	self defaultTimerEventMonitor stopMonitoringProcessCreation: procDefinition.

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	environment unregisterApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'executer' in: 'ue') removeFromCache.

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'timer-process-start' in: 'ue') do: [:each | each resetFormFieldInstances; removeFromCache]. 
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue') resetDefinitionRegistry; removeFromCache.

	environment unregisterUser: (self getUserNamed: 'andrew vm').
	environment removeFromCache.