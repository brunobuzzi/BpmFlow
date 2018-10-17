other
getFormsNamesWithFieldNamed: aString
	"Answer a collection of string where each element is a form name that contain the field named <aString>"

	^formFieldInstances keys select: [:formName | (formFieldInstances at: formName) includesKey: formName]