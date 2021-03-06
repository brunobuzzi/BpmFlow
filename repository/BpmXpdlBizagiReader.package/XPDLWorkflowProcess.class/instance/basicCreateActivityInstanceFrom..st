components creation
basicCreateActivityInstanceFrom: xmlActivityNode
	"The receiver answer the most fittable XPDL class to represent the xml node <xmlActivityNode>"

	(xmlActivityNode findElementNamed: 'SubFlow') ifNotNil: [^XPDLSubProcessNode new]."Reusable Subprocess"
	(xmlActivityNode findElementNamed: 'BlockActivity') ifNotNil: [:blockActNode | 
		(blockActNode attributeAt: 'ActivitySetId' ifAbsent: [nil]) ifNotNil: [^XPDLSubProcessNode newEmbedded]]. "Embedded Subprocess"

	(xmlActivityNode findElementNamed: 'Route') 
	ifNotNil: [:node | | gate type | 
		gate := XPDLGatewayNode new.
		"set the type of the gateway"
		type := self getGatewayTypeFrom: node.
		^gate type: type].

	(xmlActivityNode findElementNamed: 'StartEvent') ifNotNil: [^XPDLStartNode new].
	(xmlActivityNode findElementNamed: 'EndEvent') ifNotNil: [^XPDLEndNode new].
	(xmlActivityNode findElementNamed: 'IntermediateEvent') ifNotNil: [^XPDLIntermediateNode new].
	(xmlActivityNode findElementNamed: 'Script') ifNotNil: [^XPDLScriptNode new].
	(xmlActivityNode findElementNamed: 'TaskSend') ifNotNil: [^XPDLTaskSendNode new].
	(xmlActivityNode findElementNamed: 'TaskService') ifNotNil: [^XPDLTaskServiceNode new].
	(xmlActivityNode findElementNamed: 'TaskManual') ifNotNil: [^XPDLTaskManualNode new].
	(xmlActivityNode findElementNamed: 'TaskBusinessRule') ifNotNil: [^XPDLTaskBusinessRuleNode new].
	(xmlActivityNode findElementNamed: 'TaskUser') ifNotNil: [^XPDLTaskUserNode new].
	(xmlActivityNode findElementNamed: 'TaskReceive') ifNotNil: [^XPDLTaskReceiveNode new].

	^XPDLTaskNoneNode new