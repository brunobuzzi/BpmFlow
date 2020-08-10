csv
getSystemRoleStructureIn: aBpmEnvironment
	| grants |

	grants := OrderedCollection new.

	(self getVisibleApplicationsIn: aBpmEnvironment) do: [:eachApp | 
		eachApp getAllRoles do: [:eachRole | 
			eachRole usersDo: [:eachUsr |  | userGrantConfig |
				userGrantConfig := BpmUserGrantConfiguration newOn: aBpmEnvironment for: eachUsr app: eachApp role: eachRole.
				userGrantConfig 
					roleName: eachRole name;
					roleType: (eachRole isBackofficeRole ifTrue: ['B'] ifFalse: ['F']);
					roleIsAdmin: eachRole isAdmin.
				grants add: userGrantConfig]]
		].

	^grants