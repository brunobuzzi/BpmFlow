distribution
getProcessInstanceDistributionByVersionFor: appName
	| distribution transversal |

	distribution := OrderPreservingDictionary new.

	transversal := self getTransversalByVersionQuantityFor: appName.

	transversal keysAndValuesDo: [:index :array | distribution at: 'version ', index printString put: array]. 

	^distribution