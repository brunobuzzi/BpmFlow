visiting
fieldName: fieldName isContainedInAny: transitionTreeNodes
	"Answer whether or not in the collection of tree nodes <transitionTreeNodes> there is a field named <fieldName>"

	^(transitionTreeNodes select: [:trNode | trNode endArtifact isOrbeonTask or:[trNode endArtifact isSeasideTask]]) 
		anySatisfy: [:trNode | trNode endArtifact getComponentClass hasFieldNamed: fieldName]