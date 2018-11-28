other
testScriptCode3
	| script processDefinition |

	processDefinition := self getEmbedded02Process.

	script := processDefinition getScriptNamed: 'script-embedded-02' ifNone: [self assert: false].

	self assert: 
		(script scriptCode = '').