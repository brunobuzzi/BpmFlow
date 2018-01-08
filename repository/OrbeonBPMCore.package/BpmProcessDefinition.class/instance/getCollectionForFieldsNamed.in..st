search
getCollectionForFieldsNamed: fieldNamed in: formNamed 
	"The receiver answer a collection of <OrbeonProcessAssignment>s with field named <fieldNamed> with value <fieldValue> in form <formNamed>"
	| taskDefinition formDictionary fieldRcUnCollection |

	"we get the actual definition because the OrbeonForms and SeasideModel use different name convention, see #getObjectName #taskName"
	taskDefinition := self getTaskNamed: formNamed ifNone: [^#()].

	formDictionary := formFieldInstances at: taskDefinition taskName ifAbsent: [^#()].
	fieldRcUnCollection := formDictionary at: fieldNamed ifAbsent: [^#()].

	^fieldRcUnCollection