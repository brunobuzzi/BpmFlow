other
testActivitiesType
	| taskNames |

	taskNames := #('script' 'embedded-sub-proc' 'reusabe-sub-proc').

	self assert: ((self getMainWorkflow getScriptNodes detect: [:each | each getName = 'script'] ifNone: [^self assert: false]) class == XPDLScriptNode).

	self assert: ((self getMainWorkflow getSubProcessNodes detect: [:each | each getName = 'reusabe-sub-proc'] ifNone: [^self assert: false]) class == XPDLSubProcessNode).