adding exception
addExceptionDay: aDate
	"The receiver add the date <aDate> to the exception days collection.
	This date <aDate> is NOT going to be counted in processes execution time."

	^days add: aDate