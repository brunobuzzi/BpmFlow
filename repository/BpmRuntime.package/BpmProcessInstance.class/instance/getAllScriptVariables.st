execution enumeration
getAllScriptVariables
	| scriptVariables |

	scriptVariables := Dictionary new.

	self getExecutedScriptsReversed do: [:scriptInstance | scriptVariables addAll: scriptInstance scriptVariables].

	^scriptVariables