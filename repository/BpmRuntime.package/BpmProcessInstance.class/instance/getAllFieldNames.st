export
getAllFieldNames
	"The receiver answer a collection with all field names"
	| fieldNames |

	fieldNames := Set new.

	(self getExecutedArtifactsReversed select: [:each | each hasForm]) do: [:each | fieldNames addAll: each getFieldsNames].

	self getExecutedScriptsReversed do: [:each | fieldNames addAll: each getScriptVariableNames].

	fieldNames addAll: externalVariables keys.

	^fieldNames asSortedCollection