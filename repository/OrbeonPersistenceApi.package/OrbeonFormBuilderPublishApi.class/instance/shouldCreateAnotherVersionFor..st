other
shouldCreateAnotherVersionFor: newFormDefinition
	"Answer whether or not a new form definition version should be created.
	If the version numbers are different --> another version shoud be created.
	If the current publish version is NOT equal to the new version <newFormDefinition> --> another version shoud be created."
	| currentDefinition comparator |

	currentDefinition := newFormDefinition getApplication definitionNamed: newFormDefinition formName version: newFormDefinition version ifNone: [^true].

	comparator := currentDefinition compareWith: newFormDefinition.

	^comparator shouldCreateAnotherVersion