other
getProcessFormsList
	| forms |

	forms := OrderedCollection new.

	self getSelectedProcessDefinitions do: [:procDef | forms addAll: procDef getOrderedTasksNames].

	^forms asSet asSortedCollection