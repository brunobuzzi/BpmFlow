svg properties
getTranslationStringFor: aXPDLWorkflow
	"The receiver answer a translation string for <aXPDLWorkflow> comparing with render position with elements in <collectionOfWorkflows>.
	See issue: #812"
	
	^'translate(0', (aXPDLWorkflow getYcoordinate negated + 30) printString, ')'.

	"Component process definitions are render individually. 
	When a XPDL file is imported containing multiple pools on the same packages the pool are render in the original position. 
	As they are render individually the second pool to last pool are rendered with a shift in the position (the shift is the original position in the xpdl file)."