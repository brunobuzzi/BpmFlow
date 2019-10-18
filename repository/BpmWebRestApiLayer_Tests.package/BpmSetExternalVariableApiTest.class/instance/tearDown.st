other
tearDown
	| application environment |

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue-test'.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test'.

	(self defaultFrontOfficeRoleClass getRolsIn: environment forApplication: application) do: [:each | each removeFromCache].

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'all gateways' in: 'ue-test') do: [:each | each resetFormFieldInstances; removeFromCache].

	environment unregisterApplication: application.

	application resetDefinitionRegistry.

	application removeFromCache.
	environment unregisterUser: (self getUserNamed: 'alberto').
	environment removeFromCache.