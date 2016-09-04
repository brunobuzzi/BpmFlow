other
grantUser: aUser to: anOrbeonPublishedFormDefinition

	^users at: aUser 
			ifAbsent: [users at: aUser put: (OrderedCollection with: anOrbeonPublishedFormDefinition)] 
			ifPresent: [:collection | collection add: anOrbeonPublishedFormDefinition]