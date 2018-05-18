distribution
getValueSumDistributionFor: procName in: appName fieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock
	| versions distribution |

	distribution := OrderPreservingDictionary new.

	versions := self getAllProcessesNamed: procName in: appName.

	versions do: [:each | | versionDistribution |
		versionDistribution := each getValueSumEvolutionForFieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock.
		versionDistribution keysAndValuesDo: [:key :value | 
			(distribution includesKey: key) 
			ifTrue: [distribution at: key put: (distribution at: key) + value] 
			ifFalse: [distribution at: key put: value]] 
		].

	^distribution