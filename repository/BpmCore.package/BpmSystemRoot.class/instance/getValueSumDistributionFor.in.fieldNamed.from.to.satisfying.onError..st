statistics field
getValueSumDistributionFor: procName in: appName fieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock onError: errorHandler
	"The receiver select all process instances of processes definition named <procName> in application named <appName> from date <startTimeStamp> to date <startTimeStamp> satifying the query <aBlock>.
	For the selected instances then Sum all values for the field named <fieldName>.
	Iterate over all BpmProcessDefinition versions.
	Answer a Dictionary where the key is a date and the value is the sum for the field"
	| versions distribution stringKeyDistribution |

	distribution := Dictionary new.
	stringKeyDistribution := OrderPreservingDictionary new.

	versions := self getAllProcessesNamed: procName in: appName.

	versions do: [:each | | versionDistribution |
		versionDistribution := each getValueSumEvolutionForFieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock onError: errorHandler.
		versionDistribution keysAndValuesDo: [:key :value | 
			(distribution includesKey: key) 
			ifTrue: [distribution at: key put: (distribution at: key) + value] 
			ifFalse: [distribution at: key put: value]] 
		].

	distribution keys asSortedCollection do: [:key | stringKeyDistribution at: key printString put: (distribution at: key)].
	
	^stringKeyDistribution