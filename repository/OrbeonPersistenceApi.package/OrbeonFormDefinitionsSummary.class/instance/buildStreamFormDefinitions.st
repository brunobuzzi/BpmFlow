streams building
buildStreamFormDefinitions
	| allSavedDefinitions | 

	allSavedDefinitions := systemRoot getAllSavedDefinitions.

	summaryStream fetchFormDefinitionsOn: allSavedDefinitions from: self pageFrom to: self pageTo