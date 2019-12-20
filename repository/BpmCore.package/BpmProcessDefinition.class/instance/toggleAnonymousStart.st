anonymous form
toggleAnonymousStart
	"The receiver reverse the configuration for anonymous start.
	When 'AnonymousStart' is enabled the process <aBpmProcessInstance> is created from a public form without being logged in the BpmApplication.
	The form is sent by an anonymous to a special REST service that creates and start the process <aBpmProcessInstance>"

	self isAnonymousStartEnabled ifTrue: [^self removeFromAnonymousStart].

	^self addToAnonymousStart