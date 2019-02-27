other
initialize

	super initialize.

	model := self class defaultModel.

	model user: self session user.