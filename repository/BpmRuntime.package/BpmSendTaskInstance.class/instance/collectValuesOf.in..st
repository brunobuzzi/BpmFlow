process execution
collectValuesOf: collectionOfFieldNames in: aBpmProcessInstance
	"The receiver answer <aDictionary> where each key is a field name and each value is the value of the field in process <aBpmProcessInstance>"
	| fieldValues |

	fieldValues := Dictionary new.

	collectionOfFieldNames do: [:fieldName | fieldValues at: fieldName put: (aBpmProcessInstance getValueOfProcessField: fieldName)].

	^fieldValues