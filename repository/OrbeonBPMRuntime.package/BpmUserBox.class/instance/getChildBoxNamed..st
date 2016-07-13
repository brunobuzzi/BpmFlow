boxes
getChildBoxNamed: aString
	"Answer the first <BpmUserBox> named <aString>"

	^self getAllBoxes detect: [:each | each boxName = aString] ifNone: [nil]