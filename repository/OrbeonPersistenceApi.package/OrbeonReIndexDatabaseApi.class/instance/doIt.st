other
doIt
	"This service is called when a user click on ReIndex Database.
	It trigger a reindex process all indexed collections"

	systemRoot getAllFormDefinitions do: [:publishedFormDefinition |
		publishedFormDefinition rebuildAllIndexes.
	].