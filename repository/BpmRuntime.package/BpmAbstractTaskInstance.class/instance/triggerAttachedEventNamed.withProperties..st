events
triggerAttachedEventNamed: aString withProperties: aDictionary 
	"The receiver trigger an attached event named <aString> with event properties <aDictionary>.
	If the event does no exist throw <anImproperBpmOperationException>"
	| attachedEvent |

	attachedEvent := definition attachedEventNamed: aString ifNone: [^ImproperBpmOperationException signal: 'There is no Error Event named [', aString, ']'].

	^process triggerEvent: attachedEvent withProperties: aDictionary from: self