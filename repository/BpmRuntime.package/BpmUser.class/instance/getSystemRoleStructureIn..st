other
getSystemRoleStructureIn: aBpmEnvironment
	| grants |

	grants := OrderedCollection new.

	(self getVisibleApplicationsIn: aBpmEnvironment) do: [:eachApp | 
		(self defaultRoleClass getRolsIn: aBpmEnvironment forApplication: eachApp) do: [:eachRole | 
			eachRole users do: [:eachUsr | grants add: (BpmUserGrantConfiguration newOn: aBpmEnvironment for: eachUsr app: eachApp role: eachRole)]]
		].

	^grants