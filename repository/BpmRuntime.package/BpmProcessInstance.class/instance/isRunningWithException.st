execution states
isRunningWithException

	^self states anySatisfy: [:state | state isRunningWithException]