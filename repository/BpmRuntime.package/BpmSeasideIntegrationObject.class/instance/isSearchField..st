other
isSearchField: fieldName
	"Answer whether or not the field named <fieldName> is a search field"

	^self searchFields includes: fieldName asString