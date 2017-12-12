execution
executeScript: aBpmScriptTaskInstance
	"The receiver execute the BPM Script <aBpmScriptTaskInstance>"

	aBpmScriptTaskInstance executeScript.

	executedScripts add: aBpmScriptTaskInstance.

	self generateNextTransitionsFrom: aBpmScriptTaskInstance.