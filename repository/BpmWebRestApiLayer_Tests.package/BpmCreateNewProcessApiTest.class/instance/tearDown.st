other
tearDown
	| application environment roles processes |

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue-test'.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test'.

	roles := application frontofficeRoles.
	roles do: [:each | each removeFromCache].
	processes := self defaultProcessDefinitionClass getAllProcessesNamed: 'Simple Registration' in: 'ue-test'.
	processes do: [:each | each resetFormFieldInstances; removeFromCache].

	environment unregisterApplication: application.

	application resetDefinitionRegistry.

	application removeFromCache.
	environment removeFromCache.