other
onRadioButtonChanged: value

	listType := value.
	batchedList currentPage: 1.

	self closeAllInformationComponents.