streams building
buildStreamFormDefinitions
	| allSavedDefinitions | 

	allSavedDefinitions := self getOrbeonApplicationClass getAllSavedDefinitions.

	summaryStream fetchFormDefinitionsOn: allSavedDefinitions from: self pageFrom to: self pageTo