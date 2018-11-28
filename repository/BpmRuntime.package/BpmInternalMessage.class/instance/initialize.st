other
initialize

	super initialize.

	createdTime := TimeStamp now.
	subject := ''.
	body := ''.
	to := Set new.
	sendExternalMail := false.
	category := BpmInternalApplicationMessage new. "this is overwriten by the instance creation method"

	"The receiver is created in response to an original message that is stored in <inResponseTo> collection"
	inResponseTo := OrderedCollection new. "a collection of messages. "