testing
isAvailableFor: aBpmUser
	"The receiver answer whether or not the user <aBpmUser> has a context application that match with context application of <process> <BpmProcessInstance> "

	hasContextApplications ifFalse: [^true]. "if there is no context --> the receiver is available"

	^process matchContextsWith: aBpmUser