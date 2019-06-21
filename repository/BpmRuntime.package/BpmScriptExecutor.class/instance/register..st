script execution
register: aBpmScriptTaskInstance
	"The receiver register the script <aBpmScriptTaskInstance> to be executed as soon as possible.
	This method is called by Gems serving the Web Application but the script is executed by service Gems"

	^scriptsToExecute add: aBpmScriptTaskInstance