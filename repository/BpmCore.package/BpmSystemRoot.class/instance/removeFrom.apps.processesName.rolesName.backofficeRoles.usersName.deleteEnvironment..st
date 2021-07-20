removing elements
removeFrom: envName apps: appNames processesName: processNames rolesName: rolesName backofficeRoles: backofficeRoles usersName: usersName deleteEnvironment: aBoolean
	""
	| environment applications |

	usersName do: [:each | (self getUserNamed: each) resetMessagesBoxesAndRoles]. "<usersName> collection must no have <admin> user --> this will remove <admins> role from <admin> user"

	environment := self getExistingEnvironmentOrCreateNewNamed: envName.
	applications := appNames collect: [:each | self getExistingBpmApplicationOrCreateNewNamed: each].
	applications do:[:each | environment unregisterApplication: each].

	appNames do: [:each | 
		rolesName do: [:roleName | (self getFrontOfficeRoleNamed: roleName in: each) ifNotNil: [:role | role removeFromCache]].
		backofficeRoles do: [:roleName | (self getBackOfficeRoleNamed: roleName in: each) ifNotNil: [:role | role removeFromCache]].
		processNames do: [:procName | (self getAllProcessesNamed: procName in: each) do: [:eachProc | eachProc resetFormFieldInstances; removeFromCache]].
	].  

	applications  do:[:each | each resetDefinitionRegistry; removeFromCache].

	usersName do: [:usrName | environment unregisterUser: (self getUserNamed: usrName)].

	aBoolean ifTrue: [environment removeFromCache].