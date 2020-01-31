execution
executeScript: aBpmScriptTaskInstance
	"The receiver execute the BPM Script <aBpmScriptTaskInstance>"

	runningScripts add: aBpmScriptTaskInstance.
	aBpmScriptTaskInstance executeScript.

	runningScripts remove: aBpmScriptTaskInstance.
	executedScripts add: aBpmScriptTaskInstance.

	self generateNextTransitionsFrom: aBpmScriptTaskInstance.