events
triggerEventNamed: aString
	"The receiver trigger the event definition named <aString>"
	| eventDefinition eventInstance |

	eventDefinition := self processDefinition getIntermediateEventNamed: aString ifNone: [^ImproperBpmOperationException signal: 'There is no Error Event named [', aString, ']'].
	eventInstance := eventDefinition createInstanceOn: process parentArtifact: self.
	eventInstance 
		trigger: self;
		performInitializationOn: process attachTo: self.

	^eventInstance