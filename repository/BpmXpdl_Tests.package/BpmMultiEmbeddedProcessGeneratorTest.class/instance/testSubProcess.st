other
testSubProcess
	| processDefinition |

	processDefinition := self getTopProcess.

	self assert: ((processDefinition getSubProcessTaskNamed: 'embedded 01' ifNone: [self assert: false]) subProcessDefinition 
						== self getEmbedded01Process).


	processDefinition := self getEmbedded01Process.
	self assert: ((processDefinition getSubProcessTaskNamed: 'embedded 02' ifNone: [self assert: false]) subProcessDefinition 
						== self getEmbedded02Process).