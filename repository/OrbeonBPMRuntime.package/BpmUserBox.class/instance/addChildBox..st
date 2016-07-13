boxes
addChildBox: aBpmUserBox
	"The receiver add a child box to it's collection"

	aBpmUserBox boxParent: self.

	^boxChildren at: aBpmUserBox boxName put: aBpmUserBox