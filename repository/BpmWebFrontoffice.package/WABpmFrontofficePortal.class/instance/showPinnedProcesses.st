sub components
showPinnedProcesses

	^(arena class == WANewPinnedBpmProcessBrowser)
	ifTrue: [arena setParent: self]
	ifFalse: [WANewPinnedBpmProcessBrowser parent: self]