events
triggerErrorEventNamed: aString
	| eventDefinition |

	eventDefinition := self processDefinition getIntermediateEventNamed: aString ifNone: [^ImproperBpmOperationException signal: 'There is no Error Event named [', aString, ']'].