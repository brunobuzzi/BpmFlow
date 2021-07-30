other
getInstance

	^systemRoot getAnyInstanceWith: id formName: self getFormName in: self getApplicationName ifNone: [^self signalNoFormException]