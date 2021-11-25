delete process
removeProcessDefinition

	(self componentValueAt: 'removeDefinition') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	(selectedLateralItem getProcessesTreeAsCollection select: [:each | each canDelete]) do: [:each | each unregisterFromApplication].

	batchedList remove: selectedLateralItem.
	lateralCollection remove: selectedLateralItem ifAbsent: [].

	selectedLateralItem := nil.

	self removeValueNamed: 'removeDefinition'