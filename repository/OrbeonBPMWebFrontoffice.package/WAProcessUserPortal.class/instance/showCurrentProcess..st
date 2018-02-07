sub components
showCurrentProcess: anOrderedCollection
	| subComponent |

	(arena isKindOf: WAOrbeonProcessBrowser)
	ifTrue: [
		(arena mode = #normal) ifFalse: [arena searchApplied: false].
		arena mode: #normal.
		^arena parent: self collection: anOrderedCollection].

	subComponent := (self getAssignmentComponentClassFor: self session user) 
				parent: self collection: anOrderedCollection.
	
	subComponent mode: #normal; searchApplied: false.

	^subComponent