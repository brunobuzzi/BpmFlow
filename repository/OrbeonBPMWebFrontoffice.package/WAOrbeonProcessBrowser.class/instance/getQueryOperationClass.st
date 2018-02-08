search operation
getQueryOperationClass
	"The receiver answer the proper class to perform the query operation based on the scope selected by the user.
	Answer <BpmSystemQueryOperation> or <BpmUserQueryOperation>"

	^BpmQueryOperation getQueryOperationClassFor: (self searchValueAt: 'scope' ifAbsent: ['']) translatedTo: self session user