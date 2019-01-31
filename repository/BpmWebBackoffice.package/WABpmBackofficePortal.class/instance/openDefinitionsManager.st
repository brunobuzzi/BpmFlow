subcomponents
openDefinitionsManager
	| subComponent |

	(arena isKindOf: WAProcessDefinitionBrowser)
	ifTrue: [arena mode: #normal.
		^arena parent: self].

	subComponent := WAProcessDefinitionBrowser parent: self collection: self getDefinitionCollection.
	
	subComponent mode: #normal.

	^subComponent