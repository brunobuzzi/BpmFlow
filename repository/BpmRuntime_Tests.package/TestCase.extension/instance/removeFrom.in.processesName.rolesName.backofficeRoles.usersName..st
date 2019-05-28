*bpmRuntime_Tests
removeFrom: envName in: appName processesName: processNames rolesName: rolesName backofficeRoles: backofficeRoles usersName: usersName
	""

	^self removeFrom: envName apps: (Array with: appName) processesName: processNames rolesName: rolesName backofficeRoles: backofficeRoles usersName: usersName