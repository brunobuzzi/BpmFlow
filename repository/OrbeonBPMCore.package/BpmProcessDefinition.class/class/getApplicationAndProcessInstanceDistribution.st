distribution
getApplicationAndProcessInstanceDistribution
	| distribution |

	distribution := OrderPreservingDictionary new.

	self cache keysAndValuesDo: [:appName :procDefDictionary | | sum |
		sum := 0.
		procDefDictionary do: [:procDefCollection |
			procDefCollection do: [:each | sum := sum + each processInstances size].
			distribution at: appName put: sum] 
	].

	^distribution