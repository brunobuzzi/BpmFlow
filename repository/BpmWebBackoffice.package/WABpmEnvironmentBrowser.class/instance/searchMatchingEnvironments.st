other
searchMatchingEnvironments
	| envName |

	envName := self searchValueAt: 'envName' ifAbsent: [''].

	searchApplied := true.

	^searchResult := self session systemRoot environmentsSelect: [:each | (envName, '*') match: each name]