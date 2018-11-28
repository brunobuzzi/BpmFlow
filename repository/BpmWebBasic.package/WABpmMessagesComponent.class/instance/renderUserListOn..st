other
renderUserListOn: html

	userBatchedList items: selectedLateralItem getRecipients.

	html render: (userBatchedList table: self sewafTableForUsers).