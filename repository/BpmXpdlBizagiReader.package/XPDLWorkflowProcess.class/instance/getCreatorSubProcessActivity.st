searching
getCreatorSubProcessActivity
	"Answer the XPDL creator activity of the receiver"

	^parentWorkflow getSubProcessNodes detect: [:e | e getName = self getName]