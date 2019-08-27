other
testSubProcess
	| processDefinition |

	processDefinition := self getTopProcess.

	self assert: ((processDefinition getSubProcessTaskNamed: 'embedded-sub-proc' ifNone: [self assert: false]) subProcessDefinition 
						== self getEmbeddedSubProcess).

	self assert: ((processDefinition getSubProcessTaskNamed: 'reusabe-sub-proc' ifNone: [self assert: false]) subProcessDefinition 
						== self getReusableSubProcess).