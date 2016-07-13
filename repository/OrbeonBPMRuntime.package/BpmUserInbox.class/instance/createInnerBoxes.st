other
createInnerBoxes
	"The receiver create the default inner structure as a tree of boxes"
	| newBox |

	newBox := self class newNamed: self getCurrentAssignmentsName boxParent: self for: user.
	self addChildBox: newBox.

	newBox := self class newNamed: self getFinishedAssignmentsName boxParent: self for: user.
	self addChildBox: newBox.

	newBox := self class newNamed: self getReleasedAssignmentsName boxParent: self for: user.
	self addChildBox: newBox.

	newBox := self class newNamed: self getSystemNotificationsName boxParent: self for: user.
	self addChildBox: newBox.

	newBox := self class newNamed: self getUserNotificationsName boxParent: self for: user.
	self addChildBox: newBox.