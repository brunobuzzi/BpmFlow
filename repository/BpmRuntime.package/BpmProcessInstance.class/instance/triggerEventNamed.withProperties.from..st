events
triggerEventNamed: aString withProperties: aDictionary from: aBpmTaskInstance
	"The receiver trigger an attached event (definition) named <aString> from task instance <aBpmTaskInstance>.
	If the name of the event in not found answer a proper Exception"
	| eventDefinition eventInstance |

	eventDefinition := definition getIntermediateEventNamed: aString ifNone: [^ImproperBpmOperationException signal: 'There is no Error Event named [', aString, ']'].
	eventInstance := eventDefinition createInstanceOn: self parentArtifact: self.
	eventInstance 
		trigger: self;
		properties: aDictionary;
		performInitializationOn: self attachTo: self.

	^eventInstance