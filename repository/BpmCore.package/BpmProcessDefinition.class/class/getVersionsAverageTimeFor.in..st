distribution
getVersionsAverageTimeFor: processNamed in: appName
	| versions distribution |

	distribution := OrderPreservingDictionary new.

	versions := self getAllProcessesNamed: processNamed in: appName.

	versions do: [:procDef | | avgTime |
		avgTime := procDef getAverageTime.
		avgTime isZero
		ifFalse: [distribution at: procDef version printString put: avgTime]
		ifTrue: [distribution at: procDef version printString put: 0.001] 
	]. 

	^distribution