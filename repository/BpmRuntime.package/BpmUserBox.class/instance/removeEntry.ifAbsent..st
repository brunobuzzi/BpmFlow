messages
removeEntry: boxEntry ifAbsent: aBlock
	"The receiver remove the object entry <boxEntry> if absent evaluate the zero argument block <aBlock>"

	^messages remove: boxEntry ifAbsent: aBlock