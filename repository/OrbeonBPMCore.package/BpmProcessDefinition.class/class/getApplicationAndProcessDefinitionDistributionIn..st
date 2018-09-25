distribution
getApplicationAndProcessDefinitionDistributionIn: aBpmEnvironment
	| distribution |

	distribution := OrderPreservingDictionary new.

	aBpmEnvironment applications do: [:application | 
		distribution at: application applicationName put: (self cache at: application applicationName) size.
	].

	^distribution