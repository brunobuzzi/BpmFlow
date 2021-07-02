other
getInstance

	^self getOrbeonApplicationClass getAnyInstanceWith: id formName: self getFormName in: self getApplicationName ifNone: [^self signalNoFormException]