events
getErrorsEvents

	^attachedEvents select: [:each | each isErrorEvent]