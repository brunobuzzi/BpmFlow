other
reorganizeDaysFrom: aDate
	"The receiver remove all dates previous to <aDate> and store the deleted dates in <daysHistory> collection "
	| oldToRemove |

	oldToRemove := days select: [:each | each > aDate].

	days removeAll: oldToRemove.

	daysHistory addAll: oldToRemove.