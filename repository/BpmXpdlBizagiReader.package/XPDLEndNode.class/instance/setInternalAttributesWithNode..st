other
setInternalAttributesWithNode: xmlNode
	| eventNode |

	eventNode := xmlNode findElementNamed: 'EndEvent'.

	self set: 'trigger' value: (eventNode attributeAt: 'Trigger').