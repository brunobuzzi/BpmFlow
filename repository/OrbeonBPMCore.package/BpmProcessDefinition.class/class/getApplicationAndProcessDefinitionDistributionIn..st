distribution
getApplicationAndProcessDefinitionDistributionIn: aBpmEnvironment
	| distribution |

	distribution := OrderPreservingDictionary new.

	(self cache select: [:appName| aBpmEnvironment includesApplicationName: appName]) keysAndValuesDo: [:appName :procDefDictionary | 
		distribution at: appName put: procDefDictionary size.
	].

	^distribution