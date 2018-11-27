other
defaultAction
	"The receiver answer aXml string with error at parse time for Xml <badXmlString>"
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter tag: 'response' with: [
		xmlWriter tag: 'result' with: 'An Exception occured'.
		xmlWriter tag: 'errorstring' with: [
			xmlWriter nextPutAll: errorMessage.
		].
	].

	^xmlWriter contents