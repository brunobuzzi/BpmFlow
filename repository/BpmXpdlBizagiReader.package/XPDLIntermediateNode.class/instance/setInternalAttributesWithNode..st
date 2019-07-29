other
setInternalAttributesWithNode: xmlNode
	| eventNode |

	eventNode := xmlNode findElementNamed: 'IntermediateEvent'.

	self set: 'trigger' value: (eventNode attributeAt: 'Trigger').
	self set: 'target' value: (eventNode attributeAt: 'Target').
	self set: 'isAttached' value: (eventNode attributeAt: 'IsAttached').

	(eventNode findElementNamed: 'ResultError') ifNotNil: [:node | self set: 'errorCode' value: (node attributeAt: 'ErrorCode')].