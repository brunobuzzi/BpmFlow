distribution
getProcessInstanceDistributionByVersionFor: appName
	| application distribution maxSize |

	maxSize := 0.
	distribution := OrderPreservingDictionary new.

	application := self defaultApplicationManagerClass applicationNamed: appName ifNone: [^distribution].

	application getAllProcessDefinitions do: [:procName | | versionCollection |
		versionCollection := application getAllProcessesNamed: procName.
		distribution at: procName put: (versionCollection collect: [:procDef | procDef processInstancesSize]) asOrderedCollection.
		maxSize := maxSize max: versionCollection size.
	].
 
	distribution do: [:eachCollection |
		[eachCollection size = maxSize] whileFalse: [eachCollection add: 0].
	].

	^distribution collect: [:each | each asArray]