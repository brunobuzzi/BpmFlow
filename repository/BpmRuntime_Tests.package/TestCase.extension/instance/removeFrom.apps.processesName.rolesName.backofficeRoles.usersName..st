*bpmRuntime_Tests
removeFrom: envName apps: appNames processesName: processNames rolesName: rolesName backofficeRoles: backofficeRoles usersName: usersName
	""

	^self removeFrom: envName apps: appNames processesName: processNames rolesName: rolesName backofficeRoles: backofficeRoles usersName: usersName deleteEnvironment: true