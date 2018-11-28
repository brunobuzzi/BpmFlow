other
password: aString

	centralUser ifNil: [^self].

	centralUser password: aString.