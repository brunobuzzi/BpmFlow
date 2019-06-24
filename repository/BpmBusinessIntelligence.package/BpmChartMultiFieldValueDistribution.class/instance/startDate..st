other
startDate: aValue

	super startDate: aValue.

	fieldsCollection do: [:reportFieldDescriptor | reportFieldDescriptor startTimeStamp: aValue asTimeStamp].