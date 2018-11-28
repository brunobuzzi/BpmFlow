query variables
getBasicProcessFieldList
	| fields selectedFormName |

	fields := OrderedCollection new.
	selectedFormName := self getFormName.

	self getSelectedProcessDefinitions do: [:procDef | 
		fields addAll: (procDef getFieldNamesOfTask: selectedFormName)
	].

	^fields