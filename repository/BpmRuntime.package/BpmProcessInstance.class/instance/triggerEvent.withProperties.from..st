events
triggerEvent: aBpmEventDefinition withProperties: aDictionary from: aBpmTaskInstance
	"The receiver trigger an attached event (definition) named <aString> from task instance <aBpmTaskInstance>.
	If the name of the event in not found answer a proper Exception"
	| eventInstance |

	eventInstance := aBpmEventDefinition createInstanceOn: self parentArtifact: aBpmTaskInstance.
	eventInstance 
		trigger: aBpmTaskInstance;
		properties: aDictionary;
		performInitializationOn: self attachTo: aBpmTaskInstance.

	^eventInstance