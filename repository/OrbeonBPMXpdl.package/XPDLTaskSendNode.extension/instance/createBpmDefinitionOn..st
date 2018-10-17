*orbeonBPMXpdl
createBpmDefinitionOn: aBpmProcessDefinition
	"The receiver answer an instance of <BpmSendTaskDefinition> that represent the XPDL element (the receiver) in the BPM model"
	| taskDefinition |

	taskDefinition := super createBpmDefinitionOn: aBpmProcessDefinition.

	^taskDefinition 
		appName: self getApplicationName;
		processName: self getProcessName;
		gatewayName: self getGatewayName;
		eventName: self getEventName;
		processIdField: self getProcessIdField;
		identificationFields: self getIdentificationFields;
		fieldNamesToSet: self getFieldNamesToSet;
		yourself