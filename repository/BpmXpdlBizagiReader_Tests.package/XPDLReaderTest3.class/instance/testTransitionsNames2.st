other
testTransitionsNames2
	| transitionsNames |

	transitionsNames := #('tr1' 'tr2' 'tr3' 'tr4' 'tr5' 'tr6').

	self assert: (self getProcess2Workflow transitions allSatisfy: [:each | transitionsNames includes: each getName]).

	self assert: (self getProcess2Workflow transitions size = transitionsNames size).