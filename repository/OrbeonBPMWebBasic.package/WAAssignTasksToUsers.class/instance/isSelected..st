other
isSelected: aBpmUser

	^(assignationTable at: selectedTask ifAbsent: [^false]) == aBpmUser