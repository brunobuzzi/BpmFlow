distribution
getProcessInstanceDistributionByVersionFor: appName
	| distribution appDictionary maxSize |

	maxSize := 0.
	distribution := OrderPreservingDictionary new.

	appDictionary := self cacheAt: appName ifAbsent: [^#()].
	appDictionary isEmpty ifTrue: [^#()].

	appDictionary keys asSortedCollection do: [:procName | | versionCollection |
		versionCollection := appDictionary at: procName.
		distribution at: procName put: (versionCollection collect: [:procDef | procDef processInstances size]) asOrderedCollection.
		maxSize := maxSize max: versionCollection size.
	].
 
	distribution do: [:eachCollection |
		[eachCollection size = maxSize] whileFalse: [eachCollection add: 0].
	].

	^distribution collect: [:each | each asArray]