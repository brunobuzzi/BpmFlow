execution states
isRunningWithException

	^states anySatisfy: [:state | state isRunningWithException]