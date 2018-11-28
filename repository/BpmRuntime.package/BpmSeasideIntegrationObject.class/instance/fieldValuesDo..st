form-field-value
fieldValuesDo: aBlock
	"The receivet iterate over the fields collection <fieldsValues> and apply the one argument <aBlock> in each iteration"

	^fieldsValues do: aBlock