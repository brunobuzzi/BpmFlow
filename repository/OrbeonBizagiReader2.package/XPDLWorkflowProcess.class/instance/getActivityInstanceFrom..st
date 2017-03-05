components creation
getActivityInstanceFrom: xmlActivityNode
	"The receiver answer the most fittable XPDL class to represent the xml node <xmlActivityNode>"

	(xmlActivityNode findElementNamed: 'SubFlow') ifNotNil: [^XPDLSubProcessNode new]."Reusable Subprocess"
	(xmlActivityNode findElementNamed: 'BlockActivity') ifNotNil: [:blockActNode | 
		(blockActNode attributeAt: 'ActivitySetId' ifAbsent: [nil]) ifNotNil: [^XPDLSubProcessNode newEmbedded]]. "Embedded Subprocess"

	(xmlActivityNode findElementNamed: 'Route') 
	ifNotNil: [:node | | gate type | 
		gate := XPDLGatewayNode new.
		type := node attributeAt: 'GatewayType' ifAbsent: ['']. "set the type of the gateway"
		^gate type: type].

	(xmlActivityNode findElementNamed: 'StartEvent') ifNotNil: [^XPDLStartNode new].

	(xmlActivityNode findElementNamed: 'EndEvent') ifNotNil: [^XPDLEndNode new].

	(xmlActivityNode findElementNamed: 'IntermediateEvent') ifNotNil: [^XPDLIntermediateNode new].

	(xmlActivityNode findElementNamed: 'Script') ifNotNil: [^XPDLScriptNode new].

	^XPDLTaskNode new