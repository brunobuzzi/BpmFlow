Updating
timersTimespan: newValue

	newValue isString 
	ifTrue: [^[timersTimespan := Number fromString: newValue] on: Error do: [:ex | ArgumentTypeException signal: 'Timespan must be an Integer']].
 
	newValue isInteger ifFalse: [ArgumentTypeException signal: 'Timespan must be an Integer'].
 
	timersTimespan := newValue