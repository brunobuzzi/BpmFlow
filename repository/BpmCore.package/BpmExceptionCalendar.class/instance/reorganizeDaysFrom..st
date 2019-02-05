other
reorganizeDaysFrom: aDate
	"The receiver remove all dates previous to <aDate> and store the deleted dates in <daysHistory> collection "
	| oldToRemove |

	((aDate asDays + "five years"(365*5)) > Date today asDays) 
	ifTrue: [ImproperBpmOperationException signal: 'Calendars to be reorganized has to be 5 years old at minimun'].

	oldToRemove := days select: [:each | each <= aDate].

	days removeAll: oldToRemove.

	daysHistory addAll: oldToRemove.

"It is not possible to reorganize exceptions days in any Calendar.
If BpmProcessDefinition has a condition (using a calendar) like:
[proc createdTime date asDays + 600 <= Date today asDays]
In this case (k=600) if any day is removed from the exception calendar --> it will affect the condition.
So for any `k` is not possible to automatically remove day from a exception calendar.
This has to be done by script and all running conditions should be checked in order to avoid the remove of used exception days."