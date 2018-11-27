other
getExternalVariablesValuesFrom: aCollection
	"The receiver extract and convert variable names and values from <aCollection> of <XMLElement>.
	There is <XMLElement> per variable type (string, number, boolean, date , time, timestamp) and a collection of pairs <variableName, value>.
	Example: <number><amount>50000</amount><id>12345</id></number>"
	| externalVariables |

	externalVariables := Dictionary new.

	aCollection do: [:xmlTypeElement | | stClass |
		stClass := self mapStClassFrom: xmlTypeElement name. "map the XML Type with a Smalltalk class"
		stClass ifNil: [^externalVariables].
		"convert all pairs <variableName, value> into <variableName, Smalltalk value>"
		xmlTypeElement elements do: [:eachVariable | 
			externalVariables at: eachVariable name put: (stClass fromString: eachVariable innerXML). 
		].
	].