summary
generateXmlAnswer
	"The receiver generate a XML string for each element in <instanceCollection> where the values to show are the summary fields contained in <collectionOfOrbeonQueryNode>.
	The form definition <formDefinition> the username <username> and the group <group> are used to get the permissions of the current user over the forms"
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter writeWith: [:writer | | tag |

		tag := writer tag: 'documents' attributes: self getArrayOfOrbeonHeaders. "create the header of the XML"

		"generate a XML node for each form in <instanceCollection>"
		tag with: [self generateXmlNodeForAllWith: xmlWriter].
	].

	 ^xmlWriter contents