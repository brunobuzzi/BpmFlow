applications
includesAnyApplicationOf: anOrderedCollection

	^self getApplications anySatisfy: [:each | anOrderedCollection includes: each]