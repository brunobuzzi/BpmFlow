other
addAndContextApplication: anOrbeonApplication
	"The receiver add the context application <anOrbeonApplication>.
	In order to interact with the receiver aBpmUser must have roles for the receiver's process definition AND at least one role for one of the context application collection <contextApplications>.
	If <contextApplications> is empty then there is NO restriction on others Application --> aBpmUser must have roles only for receiver's process definition"

	^andContextApplications add: anOrbeonApplication