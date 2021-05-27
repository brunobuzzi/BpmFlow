private
setWithOrbeon

	environments := Dictionary new.
	self atProperty: #orbeon put: (Smalltalk at: #OrbeonSystemManager) new