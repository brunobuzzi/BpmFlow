other
printReturnedForms
	"The receiver answer <aString> representing the returned forms size in the search.
	If the summary is a not a search by field answer the total field size."

	^summaryStream isFieldStream ifFalse: [self printTotalForms] ifTrue: [returnedFormsSize printString]