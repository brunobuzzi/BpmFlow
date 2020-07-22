distribution
getApplicationAndProcessDefinitionDistributionIn: aBpmEnvironment
	| distribution |

	distribution := OrderPreservingDictionary new.

	aBpmEnvironment applications do: [:application | 
		distribution at: application applicationName put: application processesDefinitionsSize.
	].

	^distribution