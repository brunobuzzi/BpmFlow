other
getDateFromSearchValueNamed: aString onError: anObject

	^[Date fromString: (self searchValueAt: aString)] 
		on: Error 
		do: [:err | (anObject class == Date) ifTrue: [self addSearchValue: anObject named: aString].
		anObject]