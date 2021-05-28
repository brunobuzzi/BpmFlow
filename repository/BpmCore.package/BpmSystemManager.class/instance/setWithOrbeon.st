private
setWithOrbeon

	environments := Dictionary new.
	serverConfiguration := GemStoneServerConfiguration new.
	self atProperty: #orbeon put: (Smalltalk at: #OrbeonSystemManager) new