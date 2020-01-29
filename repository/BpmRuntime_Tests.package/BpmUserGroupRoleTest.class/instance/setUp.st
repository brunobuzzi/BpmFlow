other
setUp

	super setUp.

	1 to: 5 do: [:index | self createBpmSystemStructureFor: index]