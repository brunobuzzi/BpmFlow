search
getAssignmentFromFieldsNamed: fieldNamed in: formNamed withValue: fieldValue
	"The receiver answer a collection of <OrbeonProcessAssignment>s with field named <fieldNamed> with value <fieldValue> in form <formNamed>.
	The argument <fieldNamed> must include the type of the field for example: citizenId[n] or citizenName[s]"

	^(self getFieldsNamed: fieldNamed in: formNamed withValue: fieldValue) collect: [:each | each getAssignment]