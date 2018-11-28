external variables
atExternalVariable: variableName put: aValue
	"The receiver put in its collection <externalVariables> at key <variableName> the object <aValue>"

	^externalVariables at: variableName put: aValue