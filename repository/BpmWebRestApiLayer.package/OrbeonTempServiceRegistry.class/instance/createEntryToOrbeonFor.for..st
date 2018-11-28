other
createEntryToOrbeonFor: aBpmTaskInstance for: aBpmUser
	| temporaryUUID |

	"generate an UUID in <formId>"
	"aBpmTaskInstance generateFormId. "

	temporaryUUID := UUID new asString.
	" here we register the entry that is called from Orbeon to validate the url link"
	self register: temporaryUUID object: aBpmTaskInstance for: aBpmUser.

	^temporaryUUID