external variables
getExternalVariablesValuesFrom: aCollection
	| externalVariables |

	externalVariables := Dictionary new.

	aCollection do: [:xmlTypeElement | | stClass |
		stClass := self mapStClassFrom: xmlTypeElement name.
		stClass ifNil: [^externalVariables].
		xmlTypeElement elements do: [:eachVariable | 
			externalVariables at: eachVariable name put: (stClass fromString: eachVariable innerXML). 
		].
	].

	^externalVariables