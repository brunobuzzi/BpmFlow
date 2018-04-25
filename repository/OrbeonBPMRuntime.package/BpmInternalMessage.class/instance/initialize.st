other
initialize

	super initialize.

	createdTime := TimeStamp now.
	body := ''.
	to := Set new.
	sendExternalMail := false.

	"The receiver is created in response to an original message that is stored in <inResponseTo> collection"
	inResponseTo := OrderedCollection new. "a collection of messages. "