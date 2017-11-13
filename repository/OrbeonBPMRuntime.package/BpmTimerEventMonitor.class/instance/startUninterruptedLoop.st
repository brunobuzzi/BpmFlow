monitor all
startUninterruptedLoop
	"The receiver start an uninterrupted loop checking all Timer in the System.
	This method is intented to by called by a Bash program and should NOT be used inside a Smalltalk Development Environment (exception may apply at development time)"


	[true] whileTrue: [ 

		self triggerArtifactTimers.
		self triggerProcessCreation.

		(Delay forSeconds: 600) wait. "rest for 10 minutes"
	].