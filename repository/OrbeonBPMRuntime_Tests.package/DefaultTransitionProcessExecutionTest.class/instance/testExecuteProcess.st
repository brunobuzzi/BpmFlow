test
testExecuteProcess
	| endArtifact |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	"Start Step"
	self assert: (procInstance startEvent getDefinitionName = 'start').

	"End Step"
	endArtifact := procInstance endEvents asOrderedCollection last.
	self assert: ((endArtifact getDefinitionName = 'end') and: [endArtifact isEndEvent]).
	self assert: procInstance hasFinalized.

	self assert: (procInstance randomInteger = 10). "<randomInteger> is a variable is a Script"
	self assert: (procInstance age = 40).
	procInstance executedScripts do: [:each | 
		self assert: (#('script_1' 'script_2' 'script_4' 'script_5') includes: each getDefinitionName)].

	self assert: (procInstance executedScripts size = 4).