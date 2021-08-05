other
setUp

	super setUp.

	testRoot := BpmSystemRoot newWithBasicObjects.
	environments := Dictionary new.
	applications := Dictionary new.
	users := Dictionary new.
	frontofficeRoles := Dictionary new.
	backofficeRoles := Dictionary new.

	1 to: 5 do: [:index | self createBpmSystemStructureFor: index]