search
onRadioButtonChanged: value

	selectedInbox := value.
	batchedList currentPage: 1.
	userBatchedList currentPage: 1.

	selectedLateralItem := nil