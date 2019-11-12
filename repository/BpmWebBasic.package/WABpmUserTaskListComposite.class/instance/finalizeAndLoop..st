other
finalizeAndLoop: aBpmArtifactInstance
	"."

	(self componentValueAt: 'finalizeAndLoop') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self session user finalizeAssignmentAndLoop: model.

	self removeSelectionAndRefreshLateralCollection.