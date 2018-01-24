test
testApplicationsIdentity
	| applications |

	applications := AbstractApplication cache asArray.

	BpmProcessDefinition getAllProcessDefinition do: [:eachProcDef | 
		self assert: (applications anySatisfy: [:eachApp | eachApp == eachProcDef application]).
	]