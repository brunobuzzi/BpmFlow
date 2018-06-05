distribution
getProcessInstanceDistributionByVersionFor: appName
	| distribution appDictionary |

	distribution := OrderPreservingDictionary new.

	appDictionary := self cacheAt: appName ifAbsent: [^#()].
	appDictionary isEmpty ifTrue: [^#()].

	appDictionary keysAndValuesDo: [:proName :versionCollection | distribution at: proName put: (versionCollection collect: [:procDef | procDef processInstances size]) asArray]. 

	^distribution