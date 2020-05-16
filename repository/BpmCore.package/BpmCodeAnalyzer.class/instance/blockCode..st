other
blockCode: blockOrString

	codeWarnings := OrderedCollection new.
	infoWarnings := OrderedCollection new.

	blockCode := blockOrString isOctetString ifTrue: [blockOrString] ifFalse: [blockOrString method _sourceStringForBlock].
	parsedNode := [RBParser parseExpression: blockCode] on: Error do: [:err | self addBlockWarning: err description].