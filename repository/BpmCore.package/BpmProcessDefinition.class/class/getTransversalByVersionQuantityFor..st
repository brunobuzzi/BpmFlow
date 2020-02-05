distribution
getTransversalByVersionQuantityFor: appName
	"Answer anArray of Array where the first dimension is the process version and the second is the number of instances.
	#(#(4 8 5) #(9 5 1) - version 1 has 4,8,5 instances of each process def, version 2 has 9,5,1 instances of each process def, "
	| application procDictionary maxSize transversal transversalDictionary |

	transversalDictionary := Dictionary new.
	transversal := OrderedCollection new.
	application := self defaultApplicationManagerClass applicationNamed: appName ifNone: [^transversalDictionary].
	procDictionary := application processesDefinitions.
	procDictionary isEmpty ifTrue: [^#()].
	maxSize := (procDictionary asSortedCollection: [:collA :collB | collA size <= collB size]) last size.

	1 to: maxSize do: [:index | | versionArray |
		versionArray := OrderedCollection new.
		procDictionary keys asSortedCollection do: [:procName | | processCollection versionCount |
			processCollection := procDictionary at: procName.
			versionCount := (processCollection size >= index) ifTrue: [(processCollection at: index) processInstances size] ifFalse: [0].
			versionArray add: versionCount.
		].
		transversal add: versionArray.
	].  

	transversal keysAndValuesDo: [:index :anArray | transversalDictionary at: 'ver.', index printString put: anArray].

	^transversalDictionary