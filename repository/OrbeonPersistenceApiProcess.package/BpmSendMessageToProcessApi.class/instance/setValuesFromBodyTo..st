other
setValuesFromBodyTo: aBpmExternalProcessMessage
	| xPathNodes processFilters variablesCollection |

	[self parseXmlString] on: Error do: [:ex | ^BpmServiceXmlParseException newWith: xmlString].

	xPathNodes := (xmlDocument xPath: '//query') collection ifEmpty: [^nil] ifNotEmpty: [:collection | collection].
	processFilters := xPathNodes first elements collection.

	aBpmExternalProcessMessage receiverIdentificationFields: (self getProcessFiltersFromCollection: processFilters).

	xPathNodes := (xmlDocument xPath: '//externalvariables') collection ifEmpty: [^nil] ifNotEmpty: [:collection | collection].
	variablesCollection := xPathNodes first elements collection ifEmpty: [^nil] ifNotEmpty: [:collection | collection].

	aBpmExternalProcessMessage	variablesToSet: (self getExternalVariablesValuesFrom: variablesCollection).