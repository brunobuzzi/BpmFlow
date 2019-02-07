process state
abortSelectedProcess

	(self componentValueAt: 'abortSelectedProcess') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	^selectedObject abortProcess: self session user.