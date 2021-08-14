setUp
setUp

	super setUp.

	testRoot := self keepTempObjectsInSystem ifFalse: [BpmSystemRoot newWithOrbeon] ifTrue: [Globals at: #SystemRoot].