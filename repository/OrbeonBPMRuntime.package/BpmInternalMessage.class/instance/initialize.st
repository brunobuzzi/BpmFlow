other
initialize

	super initialize.

	createdTime := TimeStamp now.
	body := ''.
	to := OrderedCollection new.
	sendExternalMail := false.