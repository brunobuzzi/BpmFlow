other
addAllXpdlObject: aCollection

	aCollection do: [:each | each lane: self].

	^xpdlObjects addAll: aCollection