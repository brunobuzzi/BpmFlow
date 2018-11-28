other
generateProcessMapFor: aBpmUser
	"The receiver generate an XML String which is a XPLD file.
	This file must be imported as XPDL in Bizagi and it shows the execution path of the receiver.
	Map executed transitions with XML nodes"

	^process generateProcessMapFor: aBpmUser