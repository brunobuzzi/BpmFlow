distribution
getApplicationAndProcessInstanceDistributionIn: aBpmEnvironment
	| distribution |

	distribution := OrderPreservingDictionary new.

	aBpmEnvironment applicationsDo: [:application | | sum | 
		sum := 0.
		application processesDefinitionsDo: [:versionCollection | 
			versionCollection do: [:eachVersion | sum := sum + eachVersion processInstancesSize].
		].
		distribution at: application applicationName put: sum.
	].


	^distribution