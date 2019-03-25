other
searchMatchingEnvironments
	| envName |

	envName := self searchValueAt: 'envName' ifAbsent: [''].

	searchApplied := true.

	^searchResult := self defaultEnvironmentClass cache select: [:each | (envName, '*') match: each name]