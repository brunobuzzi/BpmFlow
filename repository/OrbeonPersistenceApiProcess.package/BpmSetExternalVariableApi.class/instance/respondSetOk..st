execute
respondSetOk: aBpmProcessInstance
	"The receiver answer aXml string with Ok to operation set external variables for process with id <processId> or filters <xmlDocument>"
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter tag: 'response' with: [
		xmlWriter tag: 'result' with: 'Successful'.
		xmlWriter tag: 'details' with: 'Variables has been added to the Bpm Process Instance'.
		xmlWriter tag: 'processid' with: aBpmProcessInstance id printString.

		xmlDocument ifNotNil: [xmlWriter tag: 'query' with: [xmlWriter cdata: xmlDocument printString]].
	].

	^xmlWriter contents