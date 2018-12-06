other
createEntryToOrbeonFor: aBpmTaskInstance for: aBpmUser
	"The receiver creates an entry in Dictionary <tokens> where the key is <anUUID> and the value is <aXMLString>" 
	| temporaryUUID |

	"generate an UUID in <formId>"
	"aBpmTaskInstance generateFormId. "

	temporaryUUID := UUID new asString.

	" here we register the entry that is called from Orbeon to validate the url link"
	tokens at: temporaryUUID put: (self generateXMLFor: aBpmTaskInstance for: aBpmUser).

	^temporaryUUID