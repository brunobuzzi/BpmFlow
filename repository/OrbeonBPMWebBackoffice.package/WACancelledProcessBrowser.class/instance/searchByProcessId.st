searching
searchByProcessId
	| id |

	id  := [Number fromString: (self searchValueAt: 'id' ifAbsent: ['0'])] on: Error do: [:err | 0].

	searchResult := BpmProcessDefinition getAbortedProcessWith: id.

	selectedLateralItem := nil.
	"selectedTransition := nil."