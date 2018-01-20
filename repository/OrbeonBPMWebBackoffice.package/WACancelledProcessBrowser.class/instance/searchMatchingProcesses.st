search area
searchMatchingProcesses
	"Answer a collection of <OrbeonProcessAssignment> that match the search criteria in receiver's web interface.
	The fast search performed against a field name and a field value in a Form (<formName>, <fieldName> and <fieldValue>). 
	If these values are not specified then answer a collection of <OrbeonProcessAssignment> for the process name <procName> in application <appName>"
	| appName procName formName fieldName fieldValue fieldValue2 |

	searchApplied := true.
	(self hasSearchValueAt: 'id') ifTrue: [^self searchByProcessId].

	selectedLateralItem := nil.

	appName := self searchValueAt: 'application' ifAbsent: [''].
	procName := self searchValueAt: 'process-type' ifAbsent: [''].
	formName := self searchValueAt: 'form-type' ifAbsent: ['']. (formName = self viewAllText) ifTrue: [formName := ''].
	fieldName  := self searchValueAt: 'field-name' ifAbsent: [''].
	fieldValue  := self searchValueAt: 'field-value' ifAbsent: [''].
	fieldValue2 := self searchValueAt: 'field-value-2' ifAbsent: [''].

	(appName notEmpty and: [procName isEmpty or:[procName = self viewAllText]]) ifTrue: [^self searchCancelledProcessByApplication: appName].

	(appName notEmpty and: [procName notEmpty and:[procName ~= self viewAllText]]) ifTrue: [^self searchCancelledProcessByApplication: appName andProcessType: procName].

	searchResult := OrderedCollection new.