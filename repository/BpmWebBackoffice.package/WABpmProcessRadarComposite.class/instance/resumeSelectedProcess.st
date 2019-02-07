process state
resumeSelectedProcess

	(self componentValueAt: 'resumeSelectedProcess') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	^selectedObject resumeProcess: self session user