other
setInternalDataWithNode: xmlNode
	"Set the <id> of the Subprocess of the receiver. The receiver will go to this subprocess when executed"

	self subProcessId: (
		(xmlNode findElementNamed: 'SubFlow')
		ifNotNil: [:resuableSubProc | resuableSubProc attributeAt: 'Id'] "reusable sub proc"
		ifNil: [(xmlNode findElementNamed: 'BlockActivity') attributeAt: 'Id'.] "embedded sub proc"
	).

	(xmlNode findElementNamed: 'SubFlow') 
	ifNil: [ ((xmlNode findElementNamed: 'BlockActivity') attributeAt: 'View') ifNotNil: [:value | self set: 'view' value: value] ].