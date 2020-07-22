distribution
getApplicationAndProcessInstanceDistributionIn: aBpmEnvironment
	| distribution |

	distribution := OrderPreservingDictionary new.

	aBpmEnvironment applications do: [:application | | sum | 
		sum := 0.
		application processesDefinitionsDo: [:versionCollection | 
			versionCollection do: [:eachVersion | sum := sum + eachVersion processInstances size].
		].
		distribution at: application applicationName put: sum.
	].


	^distribution