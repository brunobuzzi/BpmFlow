query
getProcessDefinitionWithCreationTimer
	"The receiver answer <anOrderedCollection> with all process definition with a Timer in the StartEvent "

	^self getLatestProcessDefinitions select: [:each | each hasCreationTimer]