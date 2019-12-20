other
getFormsNamesWithFieldNamed: aString
	"Answer a collection of string where each element is a form name that contain the field named <aString>.
	The argument <aString> must include the type of the field for example: citizenId[n] or citizenName[s]"

	^formFieldInstances keys select: [:formName | (formFieldInstances at: formName) includesKey: aString]