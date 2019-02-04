bpm environments
includesAnyApplicationOf: anOrderedCollection in: aBpmEnvironment
	"Answer whether or not the receiver has access to any Application contained in <anOrderedCollection> for environment <aBpmEnvironment> "

	^(self getApplicationsIn: aBpmEnvironment) anySatisfy: [:each | anOrderedCollection includes: each]