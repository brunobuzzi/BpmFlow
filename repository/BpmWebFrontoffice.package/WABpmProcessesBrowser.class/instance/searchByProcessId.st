search operation
searchByProcessId
	"The receiver search for a collection of <BpmProcessInstance> with a given <id> entered in the web application.
	The search scope can be <User> or <System>"
	| id |

	id  := [Number fromString: (self searchValueAt: 'id' ifAbsent: ['0'])] on: Error do: [:err | 0].

	searchResult := self getQueryOperation getTaskAssignmentsWithId: id isCurrent: self modeIsCurrentTasks.

	selectedLateralItem := nil.

	"selectedTransition := nil."