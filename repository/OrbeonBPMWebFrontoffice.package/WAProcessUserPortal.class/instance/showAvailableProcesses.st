sub components
showAvailableProcesses

	^(arena class == WANewBpmProcessBrowser)
	ifTrue: [arena setParent: self]
	ifFalse: [WANewBpmProcessBrowser parent: self]