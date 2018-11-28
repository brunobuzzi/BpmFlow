execution
doesNotUnderstand: aMessageDescriptor
	"The receiver overide this method in order to respond to messages that are equal in name to any of it's field name"

	(executedActivities, executedScripts)
		detect: [:each | each hasFieldNamed: aMessageDescriptor selector asString] "check the variable name in the process instance"
		ifNone: [(externalVariables includesKey: aMessageDescriptor selector asString) ifTrue: [^self valueAtExternalVariable: aMessageDescriptor selector asString].
				^(self hasFieldNamed: aMessageDescriptor selector asString) "check the variable name in the process definition"
					ifTrue: [nil] "the <variable name> exist but is not initialized --> nil"
					ifFalse: [super doesNotUnderstand: aMessageDescriptor] "if not --> default doesNotUnderstand:"
					].

	^self getValueOfProcessField: aMessageDescriptor selector asString