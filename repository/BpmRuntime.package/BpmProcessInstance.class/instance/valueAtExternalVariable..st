external variables
valueAtExternalVariable: variableName
	"The receiver get the value of external variable <variableName> "

	^externalVariables at: variableName ifAbsent: [nil]