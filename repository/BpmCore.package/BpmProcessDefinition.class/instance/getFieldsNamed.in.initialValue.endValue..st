search
getFieldsNamed: fieldNamed in: formNamed initialValue: intialValue endValue: endValue
	"The receiver answer a collection of <OrbeonProcessAssignment>s with field named <fieldNamed> in form named <formNamed> where the value of the object is greater thatn <intialValue> and less than <endValue>"
	| taskDefinition formDictionary fieldRcUnCollection stType stValue stValue2 |

	"we get the actual definition because the OrbeonForms and SeasideModel use different name convention, see #getObjectName #taskName"
	taskDefinition := self getTaskNamed: formNamed ifNone: [^#()].

	formDictionary := formFieldInstances at: taskDefinition taskName ifAbsent: [^#()].
	fieldRcUnCollection := formDictionary at: fieldNamed ifAbsent: [^#()].

	stType := self getTypeOfFieldNamed: fieldNamed.
	stValue := [stType fromString: intialValue] on: Error do: [:err | ^#()].
	stValue2 := [stType fromString: endValue] on: Error do: [:err | ^#()].

	^(GsQuery fromString: ('(each.value >= intialValue) & (each.value <= endValue)') on: fieldRcUnCollection) 
		bind: 'intialValue' to: stValue; 
		bind: 'endValue' to: stValue2; 
		queryResult