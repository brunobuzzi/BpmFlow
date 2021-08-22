other
newFor: anOrbeonApplication

	^super new initialize
		application: anOrbeonApplication;
		addToCache;
		yourself