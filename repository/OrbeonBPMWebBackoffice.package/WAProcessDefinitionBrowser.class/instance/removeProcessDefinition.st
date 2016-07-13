process
removeProcessDefinition

	(selectedLateralItem getProcessesTreeAsCollection select: [:each | each canDelete]) do: [:each | each removeFromCache].
	"selectedLateralItem removeFromCache."

	batchedList remove: selectedLateralItem.

	selectedLateralItem := nil.