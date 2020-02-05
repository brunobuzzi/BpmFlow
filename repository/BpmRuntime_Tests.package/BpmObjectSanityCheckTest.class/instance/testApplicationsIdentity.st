test
testApplicationsIdentity
	"Check identity between <AbstractApplication> in the cache and the <AbstractApplication> of each <BpmProcessDefinition>"
	| applications |

	applications := self defaultApplicationManagerClass cache asArray.

	self defaultEnvironmentClass cache do: [:environment |
		environment getAllProcessDefinitions do: [:eachProcDef | 
			self assert: (applications anySatisfy: [:eachApp | eachApp == eachProcDef application]).
		]
	].