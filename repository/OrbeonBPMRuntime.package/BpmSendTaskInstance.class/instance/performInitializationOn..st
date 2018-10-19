process execution
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	message := self createInterProcessMessageFor: aBpmProcessInstance.

	"here the target process identification is done by a set of values rather than the process id"
	definition identificationFields ifNotNil: [message receiverIdentificationFields: (self collectValuesOf: definition identificationFields in: aBpmProcessInstance)].

	message variablesToSet: (self collectValuesOf: definition fieldNamesToSet in: aBpmProcessInstance).

	"for some reason the message could not be sent. (no target process found, event gateway or event does not exist)"
	[message send] on: Error do: [:ex | sendException:= ex].

	self finalize.

	self generateNextRunningTransitions.