search area
getFormDefinitionList
	"The receiver answer a collection with all form definitions of the selected process type at <searchValues> 'process-type'"
	| procDef |

	procDef := self getSelectedProcessDefinitionOrNil.

	procDef ifNil: [^#()].

	^self viewAllArray, procDef getTaskNames asSet asSortedCollection