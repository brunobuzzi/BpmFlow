subclassResponsibility
getFieldsNames
	"The receiver answer a collection of field definitions. Iterate over embedded sections"

	^OrderedCollection new
		add: 'name';
		add: 'password';
		add: 'date';
		add: 'time';
		add: 'timeStamp';
		add: 'quantity';
		add: 'isLocal'.