other
testScriptCode
	| script processDefinition |

	processDefinition := self getTopProcess.

	script := processDefinition getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: 
		(script scriptCode = '').