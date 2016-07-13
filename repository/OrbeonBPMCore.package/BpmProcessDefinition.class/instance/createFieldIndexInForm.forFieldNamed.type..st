indexes
createFieldIndexInForm: formName forFieldNamed: fieldName type: aStClass
	"The receiver create anIndex in the form definition named <formName> for the field named <fieldName> with index type <aStClass>"
	| formsDictionary indexedCollection |

	(formFieldInstances includesKey: formName) ifFalse: [^NoFormNameException signal: 'There is no form named [', formName, '].'].

	formsDictionary := formFieldInstances at: formName.

	(formsDictionary includesKey: fieldName) ifFalse: [^NoFieldNameException signal: 'There is no field named [', fieldName, '].'].

	indexedCollection := formsDictionary at: fieldName.

	(indexedCollection size >= 2000) "see GemStone/S manual on indexes"
	ifFalse: [^CollectionWithout2000ElementsException signal: 'The collection should have at least 2000 elements to create an index on it.'].

	GsIndexSpec new
		equalityIndex: 'each.value' lastElementClass: aStClass;
		createIndexesOn: indexedCollection.