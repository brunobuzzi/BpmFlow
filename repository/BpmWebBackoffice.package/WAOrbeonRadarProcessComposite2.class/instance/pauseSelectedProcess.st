process state
pauseSelectedProcess

	(self componentValueAt: 'pauseSelectedProcess') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].


	^selectedObject pauseProcess: self session user