instance creation
newOn: anOrbeonSystemManager withId: id

	^self new
		setWorldManager: anOrbeonSystemManager id: id;
		yourself