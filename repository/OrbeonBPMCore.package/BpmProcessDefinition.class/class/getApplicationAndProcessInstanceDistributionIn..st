distribution
getApplicationAndProcessInstanceDistributionIn: aBpmEnvironment
	| distribution |

	distribution := OrderPreservingDictionary new.

	(self cache select: [:appName| aBpmEnvironment includesApplicationName: appName]) keysAndValuesDo: [:appName :procDefDictionary | | sum |
		sum := 0.
		procDefDictionary do: [:procDefCollection |
			procDefCollection do: [:each | sum := sum + each processInstances size].
			distribution at: appName put: sum] 
	].

	^distribution