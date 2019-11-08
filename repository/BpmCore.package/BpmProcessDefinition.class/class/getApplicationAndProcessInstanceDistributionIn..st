distribution
getApplicationAndProcessInstanceDistributionIn: aBpmEnvironment
	| distribution |

	distribution := OrderPreservingDictionary new.

"	aBpmEnvironment applications keysAndValuesDo: [:appName :procDefDictionary | | sum |
		sum := 0.
		procDefDictionary do: [:procDefCollection |
			procDefCollection do: [:each | sum := sum + each processInstances size].
			distribution at: appName put: sum] 
	]."

	aBpmEnvironment applications do: [:application | | sum | 
		sum := 0.
		(self cache at: application applicationName ifAbsent: [#()]) keysAndValuesDo: [:appName :versionCollection | 
			versionCollection do: [:eachVersion | sum := sum + eachVersion processInstances size].
		].
		distribution at: application applicationName put: sum.
	].


	^distribution