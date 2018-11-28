other
testScriptCode3
	| script processDefinition |

	processDefinition := self getEmbeddedSubProcess.

	script := processDefinition getScriptNamed: 'script-embedded' ifNone: [self assert: false].

	self assert: 
		(script scriptCode = 
			'[:process :script | ]').