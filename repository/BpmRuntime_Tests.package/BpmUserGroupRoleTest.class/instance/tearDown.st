other
tearDown

	super tearDown.

	1 to: 5 do: [:index | self removeBpmSystemStructureFor: index]