monitor all
startUninterruptedLoop
	"The receiver start an uninterrupted loop checking all Timer in the System.
	This method is intented to be called by a Bash program and should NOT be used inside a Smalltalk Development Environment (exception may apply at development time)"
	| timespanInSeconds |

	timespanInSeconds := self getGemStoneServerConfiguration timersTimespan.

	[true] whileTrue: [ 

		self triggerArtifactTimers.
		self triggerProcessCreation.

		(Delay forSeconds: timespanInSeconds) wait. "rest for 10 minutes"
	].