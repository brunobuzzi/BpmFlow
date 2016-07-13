other
blockCode: newValue

	blockCode := newValue.
	parser := [RBParser parseExpression: blockCode] on: Error do: [:err | self addBlockWarning: err description].