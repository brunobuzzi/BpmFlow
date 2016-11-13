other
blockCode: blockOrString

	blockCode := (blockOrString isKindOf: String) ifTrue: [blockOrString] ifFalse: [blockOrString method _sourceStringForBlock].
	parser := [RBParser parseExpression: blockCode] on: Error do: [:err | self addBlockWarning: err description].