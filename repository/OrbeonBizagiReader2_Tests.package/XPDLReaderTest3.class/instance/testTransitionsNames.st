other
testTransitionsNames
	| transitionsNames |

	transitionsNames := #('tr1' 'tr2' 'tr3' 'tr4' 'tr5' 'tr6' 'tr7' 'tr8' 'tr9' 'tr10' 'tr11' 'tr12').

	self assert: (self getProcess1Workflow transitions allSatisfy: [:each | transitionsNames includes: each getName]).

	self assert: (self getProcess1Workflow transitions size = transitionsNames size).