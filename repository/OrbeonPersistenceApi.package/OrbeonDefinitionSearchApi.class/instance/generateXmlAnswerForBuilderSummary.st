builder summary
generateXmlAnswerForBuilderSummary
	"The receiver generate a XML string for the <anOrbeonFormInstanceDefinition> in collection <definitionCollection> where total of instance is <searchTotal>.
	<definitionCollection> is filtered collection so definitionCollection size ~= searchTotal"
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter writeWith: [:writer | | tag |
		tag := writer tag: 'documents' attributes: self getArrayOfOrbeonHeaders. "create the header of the XML"
		"generate XML nodes for each element in <definitionCollection>"
		tag with: [self generateXmlNodeForAllDefinitionWith: xmlWriter]

	].

	 ^xmlWriter contents