removing elements
removeFrom: envName apps: appNames processesName: processNames rolesName: rolesName backofficeRoles: backofficeRoles usersName: usersName deleteEnvironment: aBoolean
	""
	| environment applications |

	usersName do: [:each | (self getUserNamed: each) resetMessagesBoxesAndRoles]. "<usersName> collection must no have <admin> user --> this will remove <admins> role from <admin> user"

	environment := self getExistingEnvironmentOrCreateNewNamed: envName.
	applications := appNames collect: [:each | self getExistingBpmApplicationOrCreateNewNamed: each].

	applications do: [:eachApp | 
		rolesName do: [:roleName | (self getFrontOfficeRoleNamed: roleName in: eachApp applicationName) 
												ifNotNil: [:role | eachApp removeRole: role ifAbsent: [self assert: false]]].
		backofficeRoles do: [:roleName | (self getBackOfficeRoleNamed: roleName in: eachApp applicationName) 
														ifNotNil: [:role | eachApp removeRole: role ifAbsent: [self assert: false]]].
		processNames do: [:procName | (self getAllProcessesNamed: procName in: eachApp applicationName) 
														do: [:eachProc | eachProc resetFormFieldInstances. 
																					eachApp unregisterProcessDefinition: eachProc ifAbsent: [self assert: false]]].
	].  

	applications do:[:each | each resetDefinitionRegistry. environment unregisterApplication: each].

	usersName do: [:usrName | environment unregisterUser: (self getUserNamed: usrName)].

	aBoolean ifTrue: [self unregisterEnvironment: environment ifAbsent: [self assert: false]].