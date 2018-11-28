search operation
getQueryOperation
	"The receiver answer an instance of the proper query operation class.
	Answer <aBpmSystemQueryOperation> or <aBpmUserQueryOperation>"

	^self getQueryOperationClass newFor: self session user in: self session bpmEnvironment