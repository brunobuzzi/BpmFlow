query variables
getBasicProcessFieldList
	| fields selectedFormName |

	fields := Set new.
	selectedFormName := self getFormName.

	self getSelectedProcessDefinitions do: [:procDef | 
		fields addAll: (procDef getFieldNamesOfTask: selectedFormName)
	].

	^fields asSortedCollection