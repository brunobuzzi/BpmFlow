render basic
getEventCenterFrom: aXPDLEventNode

	^(aXPDLEventNode getWidth = 30)
		ifTrue: [(aXPDLEventNode getXcoordinate @ aXPDLEventNode getYcoordinate) + (aXPDLEventNode getWidth asNumber // 2)]
		ifFalse: [aXPDLEventNode getXcoordinate @ aXPDLEventNode getYcoordinate].