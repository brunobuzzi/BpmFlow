distribution
getApplicationAndProcessDefinitionDistributionIn: aBpmEnvironment
	| distribution |

	distribution := OrderPreservingDictionary new.

	aBpmEnvironment applicationsDo: [:application | 
		distribution at: application applicationName put: application processesDefinitionsSize.
	].

	^distribution