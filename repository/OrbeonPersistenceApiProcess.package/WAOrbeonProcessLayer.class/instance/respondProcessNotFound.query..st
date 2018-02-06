external variables
respondProcessNotFound: processId query: xmlDocument
	"The receiver answer aXml string with process NOT found with id <processId> or filters <xmlDocument>"
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter tag: 'response' with: [
		xmlWriter tag: 'result' with: 'Error: No Process Found'.
		xmlWriter tag: 'processid' with: processId printString.

		xmlDocument ifNotNil: [xmlWriter tag: 'query' with: [xmlWriter cdata: xmlDocument printString]].
 
	].

	^xmlWriter contents