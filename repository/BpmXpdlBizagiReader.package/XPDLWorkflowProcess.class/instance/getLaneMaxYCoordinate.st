searching
getLaneMaxYCoordinate

	^self parentLanesIfEmpty: [^0]
			ifNotEmpty: [:collection | | lane |
				lane := (collection asSortedCollection: [:a :b | a getYcoordinate >= b getYcoordinate]) first.
				lane getYcoordinate + lane getHeight + 10] "the most bottom point of all lanes"