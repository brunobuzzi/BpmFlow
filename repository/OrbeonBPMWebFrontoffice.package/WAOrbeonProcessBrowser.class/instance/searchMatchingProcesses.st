search operation
searchMatchingProcesses
	"Answer a collection of <BpmTaskAssignment> that match the search criteria in receiver's web interface.
	The fast search performed against a field name and a field value in a Form (<formName>, <fieldName> and <fieldValue>). 
	If these values are not specified then answer a collection of <BpmTaskAssignment> for the process name <procName> in application <appName>"
	| appName procName formName fieldName fieldValue fieldValue2 |

	searchApplied := true.
	(self hasSearchValueAt: 'id') ifTrue: [^self searchByProcessId].

	selectedLateralItem := nil.

	appName := self searchValueAt: 'application' ifAbsent: [''].
	procName := self searchValueAt: 'process-type' ifAbsent: [''].
	formName := self searchValueAt: 'form-type' ifAbsent: ['']. 
	(formName = self viewAllText) ifTrue: [formName := ''].
	fieldName  := self searchValueAt: 'field-name' ifAbsent: [''].
	fieldValue  := self searchValueAt: 'field-value' ifAbsent: [''].
	fieldValue2 := self searchValueAt: 'field-value-2' ifAbsent: [''].

	(formName isEmpty and: [fieldName isEmpty and: [fieldValue isEmpty]]) ifTrue: [^self getAllAssignmentsFor: procName in: appName].

	searchResult := self isRangeSearch
		ifFalse: [BpmProcessDefinition getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName withValue: fieldValue]
		ifTrue: [BpmProcessDefinition getAssignmentsIn: appName processName: procName formName: formName fieldName: fieldName initialValue: fieldValue endValue: fieldValue2].

	searchResult := self modeIsFinishedTasks 
		ifFalse: [searchResult reject: [:each | each hasFinalized]] 
		ifTrue: [searchResult select: [:each | each hasFinalized]]