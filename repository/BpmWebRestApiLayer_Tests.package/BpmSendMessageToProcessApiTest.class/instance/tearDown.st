other
tearDown
	| application environment |

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue-test'.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test'.

	application frontofficeRoles do: [:each | each removeFromCache].

	(self defaultProcessDefinitionClass getAllProcessesNamed: 'House Purchase with Loan' in: 'ue-test') do: [:each | each resetFormFieldInstances; removeFromCache].
	(self defaultProcessDefinitionClass getAllProcessesNamed: 'House Loan' in: 'ue-test') do: [:each | each resetFormFieldInstances; removeFromCache].

	environment unregisterApplication: application.

	application resetDefinitionRegistry.

	application removeFromCache.
	environment unregisterUser: (self getUserNamed: 'andrew ap').
	environment unregisterUser: (self getUserNamed: 'andrew se').
	environment removeFromCache.