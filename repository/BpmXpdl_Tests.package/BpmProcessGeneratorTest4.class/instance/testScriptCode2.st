other
testScriptCode2
	| script processDefinition |

	processDefinition := self getEmbedded01Process.

	script := processDefinition getScriptNamed: 'script-embedded-01' ifNone: [self assert: false].

	self assert: 
		(script scriptCode = '').