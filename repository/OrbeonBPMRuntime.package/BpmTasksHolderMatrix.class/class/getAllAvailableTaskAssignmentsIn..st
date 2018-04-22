query
getAllAvailableTaskAssignmentsIn: anOrderedCollection
	"The receiver answer a collection with all running/pending tasks for all Applications contained in collection <anOrderedCollection>"
	| tasks |

	tasks := OrderedCollection new.
	anOrderedCollection do: [:eachApp |  | matrix |
		matrix := self getMatrixForApplicationNamed: eachApp applicationName. "get the Matrix for the Application"
		matrix rolesAndAssignment do: [:tasksAssign | tasks addAll: tasksAssign asArray]]. "add tasks"

	^tasks