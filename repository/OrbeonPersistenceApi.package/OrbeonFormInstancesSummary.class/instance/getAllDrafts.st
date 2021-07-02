collections
getAllDrafts
	"The receiver answer a collection with all drafts of ALL published definitions."
	| drafts |

	drafts := OrderedCollection new.

	(self application getAllDefinitionsNamed: definition formName withVersion: version ifNone: [^#()]) 
		do: [:each | drafts addAll: (each getAllDraftsFor: user orGroup: group)].

	^drafts