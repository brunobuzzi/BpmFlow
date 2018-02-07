other
getQueryOperationClassFor: scopeName translatedTo: aBpmUser

	^self subclasses detect: [:each | (each getComboBoxNameFor: aBpmUser) = scopeName] ifNone: [nil]