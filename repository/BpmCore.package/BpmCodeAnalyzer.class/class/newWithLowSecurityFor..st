instance creation
newWithLowSecurityFor: blockCode
	"Answer a new instance of receiver without controling the use of classes or methods.
	It only perform regular controls of the receiver"

	^super new initialize
			blockCode: blockCode;
			yourself