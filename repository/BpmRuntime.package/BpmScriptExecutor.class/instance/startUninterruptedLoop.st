script execution
startUninterruptedLoop
	"The receiver start an uninterrupted loop checking all deferred Scripts in the System.
	This method is intented to be called by a Bash program (running as a dedicated Gem). 
	It should NOT be used inside a Smalltalk Development Environment (exception may apply at development time)"

	[true] whileTrue: [ 
		scriptsToExecute ifNotEmpty: [ | scriptToRun |
			scriptToRun := scriptsToExecute at: 1.
			scriptsToExecute remove: scriptToRun.
			runningScripts add: scriptToRun.
			[scriptToRun process executeScript: scriptToRun] ensure: [runningScripts remove: scriptToRun. executedScripts add: scriptToRun].
		].
		System commit. "commit changes in the system"

	].