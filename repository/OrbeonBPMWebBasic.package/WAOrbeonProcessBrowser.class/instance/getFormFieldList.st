search area
getFormFieldList
	"The receiver answer a collection with all field names (removing layer mandatory fields -s,k,oop,uuid-) of the form type in <searchValues> 'form-type' "
	| selectedProcess selectedTask fieldList |

	selectedProcess := self getSelectedProcessDefinitionOrNil.
	selectedProcess ifNil: [^#()].
	selectedTask := self getSelectedTaskOrNil.
	selectedTask ifNil: [^#()].

	fieldList := #(''), (selectedProcess getFieldNamesOfTask: selectedTask name).

	^(fieldList remove: 'assignmentOop[s]' ifAbsent: []; 
			remove: 'k[s]' ifAbsent: []; 
			remove: 's[s]' ifAbsent: [];
			remove: 'oop[s]' ifAbsent: [];
			remove: 'uuid[s]' ifAbsent: [];
			yourself) asSortedCollection