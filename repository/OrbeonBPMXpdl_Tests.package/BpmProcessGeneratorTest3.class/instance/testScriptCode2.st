other
testScriptCode2
	| script processDefinition |

	processDefinition := self getReusableSubProcess.

	script := processDefinition getScriptNamed: 'script-reusable' ifNone: [self assert: false].

	self assert: 
		(script scriptCode = 
			'[:proc :script | ]').