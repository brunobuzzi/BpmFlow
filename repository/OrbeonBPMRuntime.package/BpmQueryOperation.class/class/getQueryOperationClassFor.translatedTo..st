other
getQueryOperationClassFor: scopeName translatedTo: aBpmUser
	"The receiver answer a query operation class <BpmSystemQueryOperation> or <BpmUserQueryOperation>.
	<aBpmUser> is used to get the correct translation of the scope name"

	^self subclasses detect: [:each | (each getComboBoxNameFor: aBpmUser) = scopeName] ifNone: [nil]