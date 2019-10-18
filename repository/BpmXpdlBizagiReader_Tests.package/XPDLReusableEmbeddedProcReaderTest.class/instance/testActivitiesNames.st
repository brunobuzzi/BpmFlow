other
testActivitiesNames
	| taskNames |

	taskNames := #('script' 'embedded-sub-proc' 'reusable-sub-proc').

	self assert: (self getMainWorkflow getScriptNodes allSatisfy: [:each | taskNames includes: each getName]).
	self assert: (self getMainWorkflow getScriptNodes size = 1).

	self assert: (self getMainWorkflow getSubProcessNodes allSatisfy: [:each | taskNames includes: each getName]).
	self assert: (self getMainWorkflow getSubProcessNodes size = 2).