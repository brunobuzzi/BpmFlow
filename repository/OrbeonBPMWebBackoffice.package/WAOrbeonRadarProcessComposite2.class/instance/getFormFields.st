other
getFormFields
	| selectedProcess selectedTask fieldList |

	selectedProcess := self getProcessDefinitionOrNil.
	selectedProcess ifNil: [^#()].
	selectedTask := self getTaskOrNil.
	selectedTask ifNil: [^#()].

	fieldList := selectedProcess getFieldNamesOfTask: selectedTask name.

	^(fieldList remove: 'assignmentOop[s]' ifAbsent: []; 
			remove: 'k[s]' ifAbsent: []; 
			remove: 's[s]' ifAbsent: [];
			remove: 'oop[s]' ifAbsent: [];
			remove: 'uuid[s]' ifAbsent: [];
			yourself) asSortedCollection