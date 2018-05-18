query variables
getProcessFieldList
	| fields selectedFormName |

	fields := OrderedCollection new.
	selectedFormName := self getFormName.

	self getSelectedProcessDefinitions do: [:procDef | 
		fields addAll: (procDef getFieldNamesOfTask: selectedFormName)
	].

	^(fields remove: 'assignmentOop[s]' ifAbsent: []; 
			remove: 'k[s]' ifAbsent: []; 
			remove: 's[s]' ifAbsent: [];
			remove: 'oop[s]' ifAbsent: [];
			remove: 'uuid[s]' ifAbsent: [];
			yourself) asSortedCollection