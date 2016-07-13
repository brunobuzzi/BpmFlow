other
getOrbeonFormInstanceClassOrNil
	"This method is implemented in this way to make BPM package independent of the Orbeon package"

	^Smalltalk at: #OrbeonFormInstance ifAbsent: [nil]