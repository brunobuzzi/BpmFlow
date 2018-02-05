external variables
getProcessFiltersFromCollection: aCollection
	| processFilters |

	processFilters := Dictionary new.

	aCollection do: [:xmlElement | | stClass |
		stClass := self mapStClassFrom: xmlElement name.
		stClass ifNil: [^processFilters].
		xmlElement elements do: [:eachField | processFilters at: eachField name put: (stClass fromString: eachField innerXML)]. 
		].

	^processFilters