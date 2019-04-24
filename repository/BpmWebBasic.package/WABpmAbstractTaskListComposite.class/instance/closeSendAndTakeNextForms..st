other
closeSendAndTakeNextForms: aBpmArtifactInstance
	"After filling the form the user has clicked on close and send.
	The form can not be edited again."

	(self componentValueAt: 'confirmCloseSendAndTake') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self session user finalizeAssignment: model takeNext: true.

	mainPanel removeSelectionAndRefreshLateralCollection.