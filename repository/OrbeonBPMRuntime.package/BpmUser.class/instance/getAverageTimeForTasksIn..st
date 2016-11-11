distribution
getAverageTimeForTasksIn: assignmentCollection
	| distribution totalValues |

	distribution := OrderPreservingDictionary new.
	totalValues := Dictionary new.

	assignmentCollection do: [:eachAssingment | | currentValue |
		currentValue := (distribution at: eachAssingment taskName ifAbsent: [0]) + (eachAssingment process getTotalTimeOfTaskNamed: eachAssingment taskName) asSeconds.
		totalValues at: eachAssingment taskName put: ((totalValues at: eachAssingment taskName ifAbsent: [0]) + 1).
		distribution at: eachAssingment taskName put: currentValue.
	].

	distribution keysAndValuesDo: [:key :value | distribution at: key put: (value / (totalValues at: key))].

	^distribution