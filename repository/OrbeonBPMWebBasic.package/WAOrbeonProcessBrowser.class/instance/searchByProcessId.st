search area
searchByProcessId
	| id |

	id  := [Number fromString: (self searchValueAt: 'id' ifAbsent: ['0'])] on: Error do: [:err | 0].

	searchResult := self modeIsFinishedTasks 
								ifTrue: [self session user getAllFinishedTaskAssignmentsWithId: id] 
								ifFalse: [self session user getAllTaskAssignmentsWithId: id].

	selectedLateralItem := nil.
	"selectedTransition := nil."