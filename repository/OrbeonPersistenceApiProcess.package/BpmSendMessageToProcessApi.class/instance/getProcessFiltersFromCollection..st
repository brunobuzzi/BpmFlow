other
getProcessFiltersFromCollection: aCollection
	"The receiver answer <aDictionary> converting each <XMLElement> in <aCollection>.
	Where the key is <anArray> with the name of the form and the name of the field and the value is a Smalltalk value of the field to search."
	| processFilters |

	processFilters := Dictionary new.

	aCollection do: [:xmlTypeElement | 
		xmlTypeElement elements do: [:eachForm | | stClass |
		stClass := self mapStClassFrom: xmlTypeElement name. "map the XML Type with a Smalltalk class"
			eachForm elements do: [:eachField |  | fieldName |
				fieldName := eachField name, '[', xmlTypeElement name first asString, ']'. "the type of the field is added here"
				processFilters at: fieldName put: (stClass fromString: eachField innerXML)]. 
		].
	].

	^processFilters