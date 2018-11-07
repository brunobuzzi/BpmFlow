graphics
setInternalAttributesWithNode: activityNode
	"The receiver set the internal attributes contained in the XPDL node <activityNode>"

	(activityNode attributeAt: 'IsForCompensation' ifAbsent: []) ifNotNil: [:booleanString | self set: 'isForCompensation' value: (Boolean fromString: booleanString)].