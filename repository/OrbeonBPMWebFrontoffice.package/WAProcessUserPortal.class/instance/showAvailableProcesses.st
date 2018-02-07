sub components
showAvailableProcesses

	^(arena class == WAOrbeonNewProcessBrowser)
	ifTrue: [arena setParent: self]
	ifFalse: [WAOrbeonNewProcessBrowser parent: self]