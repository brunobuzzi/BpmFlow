assignation policy
applyAssignationPolicy

	(self componentValueAt: 'applyAssignationPolicy') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	selectedLateralItem applyAssignationPolicy