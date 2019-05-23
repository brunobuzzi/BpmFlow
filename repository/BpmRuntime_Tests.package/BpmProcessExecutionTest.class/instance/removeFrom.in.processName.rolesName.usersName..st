facilities
removeFrom: envName in: appName processName: processName rolesName: rolesName usersName: usersName
	| environment application |

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: envName.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: appName.
	environment unregisterApplication: application.

	rolesName do: [:roleName | (self defaultFrontOfficeRoleClass getRoleNamed: roleName in: appName) removeFromCache]. 

	(self defaultProcessDefinitionClass getAllProcessesNamed: processName in: appName) do: [:each | each resetFormFieldInstances; removeFromCache]. 
	application resetDefinitionRegistry; removeFromCache.

	usersName do: [:usrName | environment unregisterUser: (self getUserNamed: usrName)].

	environment removeFromCache.