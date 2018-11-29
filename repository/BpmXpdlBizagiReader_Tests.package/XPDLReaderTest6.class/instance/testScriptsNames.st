other
testScriptsNames
	| taskNames |

	taskNames := #('script').

	self assert: (self getMainWorkflow getScriptNodes allSatisfy: [:each | taskNames includes: each getName]).
	self assert: (self getMainWorkflow getScriptNodes size = 1).

	taskNames := #('script-embedded-01').
	self assert: (self getLevel1_EmbeddedWorkflow getScriptNodes allSatisfy: [:each | taskNames includes: each getName]).

	taskNames := #('script-embedded-02').
	self assert: (self getLevel2_EmbeddedWorkflow getScriptNodes allSatisfy: [:each | taskNames includes: each getName]).