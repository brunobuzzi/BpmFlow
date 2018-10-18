process execution
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	message := self createInterProcessMessageFor: aBpmProcessInstance.

	"here the target process identification is done by a set of values rather than the process id"
	definition identificationFields ifNotNil: [message receiverIdentificationFields: (self collectValuesOf: definition identificationFields in: aBpmProcessInstance)].

	message variablesToSet: (self collectValuesOf: definition fieldNamesToSet in: aBpmProcessInstance).

	message send.

	self finalize.

	self generateNextRunningTransitions.