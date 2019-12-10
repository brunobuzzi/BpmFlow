instance creation
newWithMediumSecurityFor: blockCode
	"Answer a new instance of receiver that will control the use of valid classes.
	It perform regular controls of the receiver and valid classes"

	^super new initialize
			isValidClassesEnabled: true;
			addDefaultValidClasses;
			blockCode: blockCode;
			yourself