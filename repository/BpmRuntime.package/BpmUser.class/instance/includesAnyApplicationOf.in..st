bpm environments
includesAnyApplicationOf: anOrderedCollection in: aBpmEnvironment

	^(self getApplicationsIn: aBpmEnvironment) anySatisfy: [:each | anOrderedCollection includes: each]