applications
unregisterApplicationAndRemove: anApplication ifNone: aBlock
	"The receiver unregister <anApplication> if the application is not registered in any <BpmEnvironment> then evaluate the niladic block <aBlock>.
	The remove the application form the global cache"

	self unregisterApplication: anApplication ifNone: [^aBlock value].

	anApplication isOrbeonApplication ifTrue: [anApplication removeFromCache]. "see issue #1093 task 3)"