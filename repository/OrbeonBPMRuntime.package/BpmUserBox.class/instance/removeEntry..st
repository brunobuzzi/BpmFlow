messages
removeEntry: boxEntry
	"The receiver remove the object entry <boxEntry>"

	^self removeEntry: boxEntry ifAbsent: []