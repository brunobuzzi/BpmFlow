other
createNewCategory

	model addToCacheIn: self session user username.

	batchedList add: model.

	model := BpmProcessInstanceCategory new.