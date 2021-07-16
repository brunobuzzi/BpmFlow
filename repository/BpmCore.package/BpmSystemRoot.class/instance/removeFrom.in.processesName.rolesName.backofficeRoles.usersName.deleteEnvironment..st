removing elements
removeFrom: envName in: appName processesName: processNames rolesName: rolesName backofficeRoles: backofficeRoles usersName: usersName deleteEnvironment: aBoolean
	""

	^self removeFrom: envName apps: (Array with: appName) processesName: processNames rolesName: rolesName backofficeRoles: backofficeRoles usersName: usersName deleteEnvironment: aBoolean