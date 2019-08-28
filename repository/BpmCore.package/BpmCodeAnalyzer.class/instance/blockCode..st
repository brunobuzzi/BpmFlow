other
blockCode: blockOrString

	blockCode := blockOrString isOctetString ifTrue: [blockOrString] ifFalse: [blockOrString method _sourceStringForBlock].
	parser := [RBParser parseExpression: blockCode] on: Error do: [:err | self addBlockWarning: err description].