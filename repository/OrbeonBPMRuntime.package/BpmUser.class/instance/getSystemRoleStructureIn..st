other
getSystemRoleStructureIn: aBpmEnvironment
	| grants |

	grants := OrderedCollection new.

	(self getVisibleApplicationsIn: aBpmEnvironment) do: [:eachApp | 
		(BpmRole getRolsInApp: eachApp) do: [:eachRole | 
			eachRole users do: [:eachUsr | grants add: (BpmUserGrantConfiguration for: eachUsr app: eachApp role: eachRole)]]
		].

	^grants