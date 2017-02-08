adding exception
includesExceptionDay: aDate
	"The receiver add the date <aDate> to the exception days collection.
	This date <aDate> is NOT going to be counted in processes execution time."

	^days includes: aDate