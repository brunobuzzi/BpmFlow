other
testEmbeddedSubProcessesNames


	self assert: (self getMainWorkflow getSubProcessNodes anySatisfy: [:e | e getName = 'embedded 01']).
	self assert: (self getLevel1_EmbeddedWorkflow getName = 'embedded 01').

	self assert: (self getLevel1_EmbeddedWorkflow getSubProcessNodes anySatisfy: [:e | e getName = 'embedded 02']).
	self assert: (self getLevel2_EmbeddedWorkflow getName = 'embedded 02').