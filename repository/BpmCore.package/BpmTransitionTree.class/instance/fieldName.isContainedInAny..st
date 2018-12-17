visiting
fieldName: fieldName isContainedInAny: transitionTreeNodes

	^(transitionTreeNodes select: [:trNode | trNode endArtifact isOrbeonTask or:[trNode endArtifact isSeasideTask]]) 
		anySatisfy: [:trNode | trNode endArtifact getComponentClass hasFieldNamed: fieldName]