sub components
showFinishedProcess
	| subComponent |

	(arena isKindOf: WAOrbeonProcessBrowser)
	ifTrue: [
		(arena mode = #finished) ifFalse: [arena searchApplied: false].
		arena mode: #finished.
		^arena parent: self collection: OrderedCollection new"self session user finishedAssignments asArray"].

	subComponent := (self getAssignmentComponentClassFor: self session user) 
			parent: self collection: OrderedCollection new "self session user pendingAssignments asArray".

	subComponent mode: #finished; searchApplied: false.

	^subComponent