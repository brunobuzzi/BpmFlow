external variables
respondMoreThanOneProcessFound: aSet query: xmlDocument
	"The receiver answer aXml string with more than one process <aSet> found with filters <xmlDocument>"
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter tag: 'response' with: [
		xmlWriter tag: 'result' with: 'No Process Found'.
		xmlWriter tag: 'processes' with: [
			aSet do: [:each | xmlWriter tag: 'processid' with: each id printString].
		].
		xmlWriter tag: 'query' with: [xmlWriter nextPutAll: xmlDocument innerXML].
 
	].

	^xmlWriter contents