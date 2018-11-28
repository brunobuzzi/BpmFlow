external variables
removeExternalVariable: variableName
	"The receiver remove from its collection <externalVariables> the key <variableName>"

	^externalVariables removeKey: variableName ifAbsent: [NoVariableNameException signal: 'No external variable named [', variableName , ']']