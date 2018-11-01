search operation
isTimerTypeCreation

	^(self searchValueAt: 'timer-type' ifAbsent: ['0']) = 'Creation'