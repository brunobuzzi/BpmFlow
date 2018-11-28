other
getSummaryFieldsValues
	"Answer a dictionary with the values of the summary fields.
	Key (field name) >> Value (value of the field)"
	| values |

	values := Dictionary new.
	self hasForm ifFalse: [^values].
	self formSummaryFields do: [:each | values at: each put: (self getValueOfFormField: each)].

	^values