Updating
startQuantity: newValue

	newValue ifNil: [^startQuantity := 1]. "when this value is absent --> it can be assumed that is 1 -one-"

	startQuantity := newValue