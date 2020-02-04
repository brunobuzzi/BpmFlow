csv
getSystemRoleStructureIn: aBpmEnvironment
	| grants |

	grants := OrderedCollection new.

	(self getVisibleApplicationsIn: aBpmEnvironment) do: [:eachApp | 
		eachApp getAllRoles do: [:eachRole | 
			eachRole users do: [:eachUsr |  | userGrantConfig |
				userGrantConfig := BpmUserGrantConfiguration newOn: aBpmEnvironment for: eachUsr app: eachApp role: eachRole.
				userGrantConfig 
					roleName: eachRole name;
					roleType: (eachRole isBackofficeRole ifTrue: ['B'] ifFalse: ['F']);
					roleIsAdmin: (eachRole isAdminIn: aBpmEnvironment).
				grants add: userGrantConfig]]
		].

	^grants