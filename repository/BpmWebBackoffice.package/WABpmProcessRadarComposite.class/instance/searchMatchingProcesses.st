searching
searchMatchingProcesses
	| assignments |

	selectedObject := nil.
	self hasProcessId ifTrue: [^self searchProcessId].

	(self hasSelectedApplication and:[self hasFormDefinition not]) 
	ifTrue: [^self searchByApplication].

	(self hasSelectedApplication and:[self hasFormDefinition and:[self hasFormField not]])
	ifTrue: [^self searchByApplicationAndFormDefinition].

	assignments := self session systemRoot getAssignmentsIn: self getSelectedApplication 
							processName: self getProcessType 
							formName: self getSelectedFormDefinition 
							fieldName: self getSelectedFormField
							withValue: self getSelectedFormFieldValue.

	searchCollectionResult := (assignments collect: [:each | each process]) asArray.