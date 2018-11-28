other
isBackoffice: aBoolean

	aBoolean ifFalse: [model := model asFrontofficeRole].

	aBoolean ifTrue: [model := model asBackofficeRole].

	isBackoffice := aBoolean