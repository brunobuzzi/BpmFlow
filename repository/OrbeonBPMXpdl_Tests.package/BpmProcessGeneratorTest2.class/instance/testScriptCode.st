other
testScriptCode
	| script processDefinition |

	processDefinition := self getScriptProcess.

	script := processDefinition getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: 
		(script scriptCode = 
			'[:script :process |    Smalltalk at: #Test_Temps put: process.   script setVariableNamed: ''myTempVar'' withValue: 64].').