other
endDate: aValue

	super endDate: aValue.

	fieldsCollection do: [:reportFieldDescriptor | reportFieldDescriptor endTimeStamp: aValue asTimeStamp].