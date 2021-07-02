private
setBasicObjects

	environments := Dictionary new.
	serverConfiguration := GemStoneServerConfiguration new.

	self getExistingBpmApplicationOrCreateNewNamed: self adminsApplicationName in: self adminsEnvironmentName