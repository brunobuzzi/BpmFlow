distribution
getApplicationAndProcessDefinitionDistribution
	| distribution |

	distribution := OrderPreservingDictionary new.

	self cache keysAndValuesDo: [:appName :procDefDictionary | 
		distribution at: appName put: procDefDictionary size.
	].

	^distribution