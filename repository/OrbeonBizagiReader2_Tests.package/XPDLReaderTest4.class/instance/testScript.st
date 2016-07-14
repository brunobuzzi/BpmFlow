other
testScript
	| scriptNode |

	scriptNode := 	self getProcess1Workflow getScriptNodes asArray last.

	self assert: (scriptNode script = '[:script :process |    Smalltalk at: #Test_Temps put: process.   script setVariableNamed: ''myTempVar'' withValue: 64].')