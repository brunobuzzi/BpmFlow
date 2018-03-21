Updating
taskToFinish: newValue
	taskToFinish := newValue.

	self model: (OrderedCollection with: newValue)