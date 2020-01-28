other
modifyApplication: anApplication value: aBoolean

	aBoolean ifFalse: [^self].

	model beBackofficeUserIn: anApplication