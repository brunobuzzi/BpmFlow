instance creation
newWithHighSecurityFor: blockCode
	"Answer a new instance of receiver that will control the use of valid classes and valid selectors.
	It perform regular controls of the receiver, valid classes and valid selectors"

	^super new initialize
			isValidClassesEnabled: true;
			isValidSelectorsEnabled: true;
			addDefaultValidClasses;
			addDefaultValidSelectors;
			blockCode: blockCode;
			yourself