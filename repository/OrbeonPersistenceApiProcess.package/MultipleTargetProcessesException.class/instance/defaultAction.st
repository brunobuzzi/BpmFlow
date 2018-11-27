other
defaultAction
	"The receiver answer aXml string with more than one process <aSet> found with filters <xmlDocument>"
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter tag: 'response' with: [
		xmlWriter tag: 'result' with: 'Error: More than one Process Found'.
		xmlWriter tag: 'processes' with: [
			process do: [:each | xmlWriter tag: 'processid' with: each id printString]. "in this case <process> is <aSet> of <BpmProcessInstance>"
		].
		xmlDocument ifNotNil: [xmlWriter tag: 'query' with: [xmlWriter cdata: xmlDocument printString]].
 
	].

	^xmlWriter contents