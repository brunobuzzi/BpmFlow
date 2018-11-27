other
getProcessFiltersFromCollection: aCollection
	"The receiver answer <aDictionary> converting each <XMLElement> in <aCollection>.
	Where the key is <anArray> with the name of the form and the name of the field and the value is a Smalltalk value of the field to search."
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