other
tearDown
	| application environment roles processes |

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-st'.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st'.

	roles := self defaultFrontOfficeRoleClass getRolsIn: environment forApplication: application.
	roles do: [:each | each removeFromCache].
	processes := self defaultProcessDefinitionClass getAllProcessesNamed: 'Simple Registration' in: 'st'.
	processes do: [:each | each resetFormFieldInstances; removeFromCache].

	environment unregisterApplication: application.

	application resetDefinitionRegistry.

	application removeFromCache.
	environment removeFromCache.