other
getSwitchText

	^self modeIsLanguage ifTrue: ['Manage Environments' translateIn: self session] ifFalse: ['Manage Languages' translateIn: self session]