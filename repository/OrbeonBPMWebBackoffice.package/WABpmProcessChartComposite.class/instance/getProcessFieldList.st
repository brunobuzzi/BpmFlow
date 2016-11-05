query variables
getProcessFieldList
	| fields selectedFormName |

	fields := OrderedCollection new.
	selectedFormName := self getFormName.

	self getSelectedProcessDefinitions do: [:procDef | 
		(procDef getTasks select: [:each | each name = selectedFormName]) do: [:eachTask | fields addAll: eachTask getComponentClass getFieldsNames]].

	^fields asSet asSortedCollection