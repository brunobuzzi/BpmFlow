search
getFieldsNamed: fieldNamed in: formNamed withValue: fieldValue
	"The receiver answer a collection of <OrbeonProcessAssignment>s with field named <fieldNamed> with value <fieldValue> in form <formNamed>"
	| taskDefinition formDictionary fieldRcUnCollection stType stValue |

	"we get the actual definition because the OrbeonForms and SeasideModel use different name convention, see #getObjectName #taskName"
	taskDefinition := self getTaskNamed: formNamed ifNone: [^#()].

	formDictionary := formFieldInstances at: taskDefinition taskName ifAbsent: [^#()].
	fieldRcUnCollection := formDictionary at: fieldNamed ifAbsent: [^#()].

	stType := self getTypeOfFieldNamed: fieldNamed.
	stValue := [stType fromString: fieldValue] on: Error do: [:err | ^#()].

	^((GsQuery fromString: ('each.value = stValue') on: fieldRcUnCollection) 
		bind: 'stValue' to: stValue; 
		queryResult) collect: [:each | each getAssignment]