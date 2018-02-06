external variables
respondXmlParseError: badXmlString
	"The receiver answer aXml string with error at parse time for Xml <badXmlString>"
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter tag: 'response' with: [
		xmlWriter tag: 'result' with: 'XML Parse Error'.
		xmlWriter tag: 'errorstring' with: [
			xmlWriter nextPutAll: badXmlString .
		].
	].

	^xmlWriter contents