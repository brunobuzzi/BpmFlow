other
setInternalAttributesWithNode: xmlNode
	| eventNode |

	eventNode := xmlNode findElementNamed: 'StartEvent'.

	self set: 'trigger' value: (eventNode attributeAt: 'Trigger').