subclassResponsibility
getAllFields
	"This method (#getAllFields) answer aDictionary where each key is the name of the field and each value is a collection of string values"
	| fields |

	fields := Dictionary new.

	fields at: 'name' put: (OrderedCollection with: name);
			at: 'password' put: (OrderedCollection with: password);
			at: 'date' put: (OrderedCollection with: date);
			at: 'time' put: (OrderedCollection with: time);
			at: 'timeStamp' put: (OrderedCollection with: timeStamp);
			at: 'quantity' put: (OrderedCollection with: quantity);
			at: 'isLocal' put: (OrderedCollection with: isLocal).

	^fields