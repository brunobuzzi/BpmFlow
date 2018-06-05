query
getTransversalByVersionQuantityFor: appName
	"Answer anArray of Array where the first dimension is the process version and the second is the number of instances.
	#(#(4 8 5) #(9 5 1) - version 1 has 4,8,5 instances of each process def, version 2 has 9,5,1 instances of each process def, "
	| appDictionary maxSize transversal |

	transversal := OrderedCollection new.
	appDictionary := self cacheAt: appName ifAbsent: [^#()].
	appDictionary isEmpty ifTrue: [^#()].
	maxSize := (appDictionary asSortedCollection: [:collA :collB | collA size <= collB size]) last size.

	1 to: maxSize do: [:index | | versionArray |
		versionArray := OrderedCollection new.
		appDictionary keys asSortedCollection do: [:procName | | processCollection versionCount |
			processCollection := appDictionary at: procName.
			versionCount := (processCollection size >= index) ifTrue: [(processCollection at: index) processInstances size] ifFalse: [0].
			versionArray add: versionCount.
		].
		transversal add: versionArray.
	].  

	^transversal asArray collect: [:eachColl | eachColl asArray]