external variables
respondBadExternalVariablesConfiguration: aBpmProcessInstance with: xmlDocument
	"The receiver answer a Xml string noting a BAD xml configuration in <xmlDocument> to set external variables of <aBpmProcessInstance>"
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter tag: 'response' with: [
		xmlWriter tag: 'result' with: 'Error: Bad Xml  Configuration to set variables'.
		xmlWriter tag: 'processid' with: aBpmProcessInstance id printString.

		xmlDocument ifNotNil: [xmlWriter tag: 'query' with: [xmlWriter cdata: xmlDocument printString]].
 
	].

	^xmlWriter contents