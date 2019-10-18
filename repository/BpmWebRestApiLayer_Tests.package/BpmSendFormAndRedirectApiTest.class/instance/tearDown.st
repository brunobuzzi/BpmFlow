other
tearDown
	| application environment |

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue-test'.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test'.

	(self defaultFrontOfficeRoleClass getRolsIn: environment forApplication: application) do: [:each | each removeFromCache].

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'visa-appliance' in: 'ue-test') do: [:each | each resetFormFieldInstances; removeFromCache].
	(self defaultProcessDefinitionClass getAllProcessesNamed: 'home-office-check' in: 'ue-test') do: [:each | each resetFormFieldInstances; removeFromCache].
	(self defaultProcessDefinitionClass getAllProcessesNamed: 'check-financial-data' in: 'ue-test') do: [:each | each resetFormFieldInstances; removeFromCache].

	environment unregisterApplication: application.

	application resetDefinitionRegistry.

	application removeFromCache.
	environment unregisterUser: (self getUserNamed: 'andrew vo').
	environment unregisterUser: (self getUserNamed: 'andrew vo2').
	environment unregisterUser: (self getUserNamed: 'andrew vo3').
	environment unregisterUser: (self getUserNamed: 'andrew vm').
	environment unregisterUser: (self getUserNamed: 'andrew vc').
	environment unregisterUser: (self getUserNamed: 'andrew fo').
	environment unregisterUser: (self getUserNamed: 'andrew po').
	environment unregisterUser: (self getUserNamed: 'andrew do').
	environment removeFromCache.