days configuration
removeAllDaysNamed: aString ofYear: year
	"The receiver add all sundays of year <year>"
	| pivotDate shift daysToAdd |

	shift := 1.
	daysToAdd := Set new.
	pivotDate := Date fromString: '01/01/', year printString.

	[pivotDate year = year] whileTrue: [
		(pivotDate weekDayName = aString) 
		ifTrue: [
			daysToAdd add: pivotDate.
			shift := 7].
		pivotDate := pivotDate addDays: shift.
	].

	daysToAdd do: [:each | self removeExceptionDay: each].