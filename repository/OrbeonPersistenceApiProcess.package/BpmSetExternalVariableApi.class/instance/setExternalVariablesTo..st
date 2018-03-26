other
setExternalVariablesTo: aBpmProcessInstance
	"The receiver add external variables values to <aBpmProcessInstance> contained in XML document <xmlDocument>"
	| xPathNodes variablesCollection |

	xPathNodes := (xmlDocument xPath: '//externalvariables') collection ifEmpty: [^nil] ifNotEmpty: [:collection | collection].

	variablesCollection := xPathNodes first elements collection ifEmpty: [^nil] ifNotEmpty: [:collection | collection].

	(self getExternalVariablesValuesFrom: variablesCollection) keysAndValuesDo: [:key :value | 
		aBpmProcessInstance atExternalVariable: key put: value]