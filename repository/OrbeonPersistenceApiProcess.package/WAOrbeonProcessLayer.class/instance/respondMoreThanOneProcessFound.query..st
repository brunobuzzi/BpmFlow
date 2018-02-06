external variables
respondMoreThanOneProcessFound: aSet query: xmlDocument
	"The receiver answer aXml string with more than one process <aSet> found with filters <xmlDocument>"
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter tag: 'response' with: [
		xmlWriter tag: 'result' with: 'Error: More than one Process Found'.
		xmlWriter tag: 'processes' with: [
			aSet do: [:each | xmlWriter tag: 'processid' with: each id printString].
		].
		xmlDocument ifNotNil: [xmlWriter tag: 'query' with: [xmlWriter cdata: xmlDocument printString]].
 
	].

	^xmlWriter contents