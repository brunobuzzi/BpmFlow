other
getSystemRoleStructure
	| grants |

	grants := OrderedCollection new.

	self getVisibleApplications do: [:eachApp | 
		(BpmRole getRolsInApp: eachApp) do: [:eachRole | 
			eachRole users do: [:eachUsr | grants add: (BpmUserGrantConfiguration for: eachUsr app: eachApp role: eachRole)]]
		].

	^grants