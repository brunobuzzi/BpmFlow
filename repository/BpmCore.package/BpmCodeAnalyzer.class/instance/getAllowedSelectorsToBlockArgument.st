code exceptions
getAllowedSelectorsToBlockArgument
	"Answer a collection with valid selectors that can be sent to the argument of the Block to be evaluated."

	^#(#getValueOf: #getValueOfProcessField: #getValuesOfProcessField: #id #createdTime)