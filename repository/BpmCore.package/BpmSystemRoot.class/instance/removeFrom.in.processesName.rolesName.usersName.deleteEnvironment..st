removing elements
removeFrom: envName in: appName processesName: processNames rolesName: rolesName usersName: usersName deleteEnvironment: aBoolean
	
	^self removeFrom: envName in: appName processesName: processNames rolesName: rolesName backofficeRoles: #() usersName: usersName deleteEnvironment: aBoolean