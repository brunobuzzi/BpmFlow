searching
searchByProcessId
	| id |

	id  := [Number fromString: (self searchValueAt: 'id' ifAbsent: ['0'])] on: Error do: [:err | 0].

	searchResult := self session systemRoot getAbortedProcessWith: id in: self session bpmEnvironment.

	selectedLateralItem := nil.
	"selectedTransition := nil."