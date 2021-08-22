script execution
executeScript: aBpmScriptTaskInstance

	scriptsToExecute remove: aBpmScriptTaskInstance.
	runningScripts add: aBpmScriptTaskInstance.

	[aBpmScriptTaskInstance executeInProcess] ensure: [
		runningScripts remove: aBpmScriptTaskInstance. 
		executedScripts add: aBpmScriptTaskInstance].