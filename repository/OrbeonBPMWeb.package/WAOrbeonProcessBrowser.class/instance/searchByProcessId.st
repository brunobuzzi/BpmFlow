search area
searchByProcessId
	| id |

	id  := self searchValueAt: 'id' ifAbsent: [''].

	searchResult := self getIterationCollection select: [:each | each processId printString = id].

	selectedLateralItem := nil.
	"selectedTransition := nil."

	self removeSearchValueNamed: 'id'