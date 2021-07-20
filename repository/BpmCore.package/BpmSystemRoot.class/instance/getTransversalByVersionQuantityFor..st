statistics
getTransversalByVersionQuantityFor: appName
	"Answer anArray of Array where the first dimension is the process version and the second is the number of instances.
	#(#(4 8 5) #(9 5 1) - version 1 has 4,8,5 instances of each process def, version 2 has 9,5,1 instances of each process def, "
	| application maxSize maxArray transversal transversalDictionary |

	transversalDictionary := Dictionary new.
	transversal := OrderedCollection new.
	application := self applicationNamed: appName ifNone: [^transversalDictionary].

	maxSize := 0.
	application processesDefinitionsDo: [:processesCollection |  | versionArray |
		maxSize := maxSize max: processesCollection size.
		versionArray := OrderedCollection new.
		processesCollection do: [:procDefinition |
			versionArray add: procDefinition processInstancesSize.
		].
		transversal add: versionArray.
	].

	maxArray := Array new: maxSize.
	maxArray keysAndValuesDo: [:k :v | maxArray at: k put: 0].

	transversal keysAndValuesDo: [:index :anArray | | normalizedSizeArray |
		normalizedSizeArray := Array withAll: maxArray.
		anArray keysAndValuesDo: [:k :v | normalizedSizeArray at: k put: v].
		transversalDictionary at: 'ver.', index printString put: normalizedSizeArray].

	^transversalDictionary