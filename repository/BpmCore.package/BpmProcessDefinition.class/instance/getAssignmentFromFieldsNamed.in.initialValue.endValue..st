search
getAssignmentFromFieldsNamed: fieldNamed in: formNamed initialValue: intialValue endValue: endValue
	"The receiver answer a collection of <OrbeonProcessAssignment>s with field named <fieldNamed> in form named <formNamed> where the value of the object is greater thatn <intialValue> and less than <endValue>"

	^(self getFieldsNamed: fieldNamed in: formNamed initialValue: intialValue endValue: endValue) collect: [:each | each getAssignment]