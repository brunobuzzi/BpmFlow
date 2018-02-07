search operation
searchByProcessId
	| id searchClass |

	id  := [Number fromString: (self searchValueAt: 'id' ifAbsent: ['0'])] on: Error do: [:err | 0].

"	searchResult := self modeIsFinishedTasks 
								ifTrue: [self session user getAllFinishedTaskAssignmentsWithId: id] 
								ifFalse: [self session user getAllTaskAssignmentsWithId: id].
"
	searchClass := BpmQueryOperation getQueryOperationClassFor: (self searchValueAt: 'scope' ifAbsent: ['']) translatedTo: self session user.

	searchResult := (searchClass newFor: self session user) getAllTaskAssignmentsWithId: id isCurrent: self modeIsCurrentTasks.

	selectedLateralItem := nil.
	"selectedTransition := nil."