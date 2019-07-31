events
triggerEventNamed: aString from: aBpmTaskInstance
	"The receiver trigger an attached event (definition) named <aString> from task instance <aBpmTaskInstance>.
	If the name of the event in not found answer a proper Exception"

	^self triggerEventNamed: aString withProperties: Dictionary new from: aBpmTaskInstance