other
defaultAction
	"The receiver answer aXml string with process NOT found with id <processId> or filters <xmlDocument>"
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter tag: 'response' with: [
		xmlWriter tag: 'result' with: 'Error: No Process Found'.

		xmlDocument ifNotNil: [xmlWriter tag: 'query' with: [xmlWriter cdata: xmlDocument printString]].
 
	].

	^xmlWriter contents