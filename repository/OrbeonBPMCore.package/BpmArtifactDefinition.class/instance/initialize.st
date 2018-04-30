other
initialize

	super initialize.

	inTransitions := OrderedCollection new.
	outTransitions := OrderedCollection new.
	roles := OrderedCollection new.
	informTo := Dictionary new. "the key is the BpmRole to inform and the value when to inform (#creation , #modification, #finalization)"
	extendedAttributes := Dictionary new.