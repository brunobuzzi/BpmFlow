process execution
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	aBpmProcessInstance registerEvent: self.

	self isTimerEvent 
	ifFalse: [self performRegularEventInitializationOn: aBpmProcessInstance]
	ifTrue: [self performTimerEventInitializationOn: aBpmProcessInstance].