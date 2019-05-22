other
tearDown
	| application environment |

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	(self defaultFrontOfficeRoleClass getRolsIn: environment forApplication: application) do: [:each | each removeFromCache].

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'House Purchase with Loan' in: 'ue') do: [:each | each resetFormFieldInstances; removeFromCache].
	(self defaultProcessDefinitionClass getAllProcessesNamed: 'House Loan' in: 'ue') do: [:each | each resetFormFieldInstances; removeFromCache].

	environment unregisterApplication: application.

	application resetDefinitionRegistry.

	application removeFromCache.
	environment unregisterUser: (self getUserNamed: 'andrew ap').
	environment unregisterUser: (self getUserNamed: 'andrew se').
	environment removeFromCache.