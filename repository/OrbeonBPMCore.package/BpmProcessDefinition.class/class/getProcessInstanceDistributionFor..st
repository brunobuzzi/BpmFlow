distribution
getProcessInstanceDistributionFor: appName
	| applicationDictionary distribution |

	distribution := OrderPreservingDictionary new.
	applicationDictionary := self cacheAt: appName ifAbsent: [^Dictionary new].

	applicationDictionary keysAndValuesDo: [:procName :versionCollection | | sum |
		sum := 0.
		versionCollection do: [:procDef | sum := sum + procDef processInstances size].
		distribution at: procName put: sum.
	]. 

	^distribution