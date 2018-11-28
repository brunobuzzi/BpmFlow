other
searchMatchingEnvironments
	| envName |

	envName := self searchValueAt: 'envName' ifAbsent: [''].

	searchApplied := true.

	^searchResult := BpmEnvironment cache select: [:each | (envName, '*') match: each name]