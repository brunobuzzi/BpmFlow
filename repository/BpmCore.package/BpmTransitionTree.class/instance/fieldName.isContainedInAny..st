visiting
fieldName: fieldName isContainedInAny: transitionTreeNodes
	"Answer whether or not in the collection of tree nodes <transitionTreeNodes> there is a field named <fieldName>"

	^(transitionTreeNodes select: [:trNode | trNode endArtifactIsOrbeonTask or:[trNode endArtifactIsSeasideTask]]) 
		anySatisfy: [:trNode | trNode endArtifactGetComponentClass hasFieldNamed: fieldName]