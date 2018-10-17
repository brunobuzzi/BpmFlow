process execution
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"
	| interProcessMessage |

	interProcessMessage := self createInterProcessMessageFor: aBpmProcessInstance.

	"here the target process identification is done by a set of values rather than the process id"
	definition identificationFields ifNotNil: [interProcessMessage receiverIdentificationFields: (self collectValuesOf: definition identificationFields in: aBpmProcessInstance)].

	interProcessMessage variablesToSet: (self collectValuesOf: definition fieldNamesToSet in: aBpmProcessInstance).

	interProcessMessage send.