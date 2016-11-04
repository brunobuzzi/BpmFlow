other
getDateFromSearchValueNamed: aString onError: date

	^[Date fromString: (self searchValueAt: aString)] on: Error do: [:err| date]