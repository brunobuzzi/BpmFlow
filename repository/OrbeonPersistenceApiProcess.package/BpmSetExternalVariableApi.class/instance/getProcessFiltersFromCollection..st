other
getProcessFiltersFromCollection: aCollection
	| processFilters |

	processFilters := Dictionary new.

	aCollection do: [:xmlTypeElement | | stClass |
		stClass := self mapStClassFrom: xmlTypeElement name.
		stClass ifNil: [^processFilters].
		xmlTypeElement elements do: [:eachForm | 
			eachForm elements do: [:eachField |  processFilters at: (Array with: eachForm name with: eachField name) put: (stClass fromString: eachField innerXML)]. 
		].
	].

	^processFilters