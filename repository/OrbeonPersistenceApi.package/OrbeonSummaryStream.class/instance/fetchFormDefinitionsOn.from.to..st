fetch definitions
fetchFormDefinitionsOn: definitions from: startIndex to: endIndex
	| filteredCollection realEndIndex |

	filteredCollection := (summary selectFormsDefinitionsFrom: definitions) asSortedCollection: [:a :b | b modifiedTime <= a modifiedTime].

	(startIndex > filteredCollection size) ifTrue: [^self].
	realEndIndex := (endIndex > filteredCollection size) ifTrue: [filteredCollection size] ifFalse: [endIndex]. 

	filteredCollection := filteredCollection copyFrom: startIndex to: realEndIndex.

	definitionsReadStream := ReadStreamPortable on: filteredCollection